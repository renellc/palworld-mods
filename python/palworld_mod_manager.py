import os

import click

from pathlib import Path
from typing import Dict, Union

from dotenv import load_dotenv


REPO_MODS_DIR = Path("../Mods")
PALWORLD_MODS_DIR_PATH = "/Pal/Binaries/Win64/Mods"


@click.command()
@click.option("-c", "--create", type=str, nargs=1, help="Creates a new mod")
@click.option(
    "-s",
    "--sync",
    type=str,
    is_flag=True,
    help="Syncs mods with Palworld",
)
def main(create: str, sync: bool):
    if create:
        mod_type = click.prompt(
            "Select the mod type",
            default="Server",
            type=click.Choice(["Server", "Client"], case_sensitive=False),
            show_choices=True,
            show_default=True,
        )

        create_mod(create, mod_type)
        click.echo(f'Successfully created {mod_type} mod "{create}"!')

    if sync:
        try:
            client_dir = os.environ.get("PALWORLD_CLIENT_DIR")
            server_dir = os.environ.get("PALWORLD_SERVER_DIR")

            synced_mods = sync_mods(client_dir, server_dir)

            click.echo("Finished syncing mods!")
            click.echo("Sync Report:")

            for mod_name, report in synced_mods.items():
                click.echo(f"{mod_name}: {report}")
        except Exception as e:
            click.echo("Failed to sync mods:")
            click.echo(e)
            exit(1)

    exit(0)


def create_mod(mod_name: str, mod_type: str):
    mod_dir = Path(f"{REPO_MODS_DIR.resolve()}/{mod_name}")
    scripts_dir = Path(f"{mod_dir.resolve()}/Scripts")

    scripts_dir.mkdir(parents=True)

    enabled_txt_file = Path(f"{mod_dir.resolve()}/enabled.txt")
    with open(enabled_txt_file.resolve(), "w+") as f:
        f.write("SERVER=true" if mod_type == "Server" else "SERVER=false")
        f.close()

    main_lua_file = Path(f"{scripts_dir.resolve()}/main.lua")
    with open(main_lua_file.resolve(), "w+") as f:
        f.close()


def sync_mods(
    palworld_client_dir_path: Union[str, None],
    palworld_server_dir_path: Union[str, None],
) -> Dict[str, str]:
    is_invalid_client_dir_path = (
        palworld_client_dir_path is None or palworld_client_dir_path.strip() == ""
    )
    is_invalid_server_dir_path = (
        palworld_server_dir_path is None or palworld_server_dir_path.strip() == ""
    )

    if is_invalid_client_dir_path and is_invalid_server_dir_path:
        raise Exception(
            "No valid paths were provided for the client and server directory"
        )

    client_mod_dir = None
    server_mod_dir = None

    if palworld_client_dir_path is not None:
        client_mod_dir = Path(f"{palworld_client_dir_path}{PALWORLD_MODS_DIR_PATH}")
        print(client_mod_dir.resolve())
        if not client_mod_dir.is_dir():
            raise FileNotFoundError("Provided Palworld client directory does not exist")

    if palworld_server_dir_path is not None:
        server_mod_dir = Path(f"{palworld_server_dir_path}{PALWORLD_MODS_DIR_PATH}")
        if not server_mod_dir.is_dir():
            raise FileNotFoundError("Provided Palworld server directory does not exist")

    repo_mods_shared_dir = Path(f"{REPO_MODS_DIR.resolve()}/shared")

    if client_mod_dir is not None:
        for dir in client_mod_dir.iterdir():
            if dir.is_symlink():
                dir.rmdir() if dir.is_dir() else dir.unlink()
        client_mod_shared_dir = Path(f"{client_mod_dir.resolve()}/shared")
        client_mod_shared_dir.symlink_to(repo_mods_shared_dir.resolve())

    if server_mod_dir is not None:
        for dir in server_mod_dir.iterdir():
            if dir.is_symlink():
                dir.rmdir() if dir.is_dir() else dir.unlink()
        client_mod_shared_dir = Path(f"{server_mod_dir.resolve()}/shared")
        client_mod_shared_dir.symlink_to(repo_mods_shared_dir.resolve())

    mod_sync_report = dict()

    for mod_dir in REPO_MODS_DIR.iterdir():
        mod_enabled_txt_file = Path(f"{mod_dir.resolve()}/enabled.txt")
        if not mod_enabled_txt_file.is_file():
            continue

        is_server_mod = False
        with open(mod_enabled_txt_file.resolve(), "r") as f:
            lines = f.readlines()
            for line in lines:
                key, value = line.split("=")

                if key.strip() != "SERVER":
                    continue

                is_server_mod = value.strip() == "true"
                break

            f.close()

        if is_server_mod:
            if server_mod_dir is not None:
                symlinked_dir = Path(f"{server_mod_dir.resolve()}/{mod_dir.name}")
                symlinked_dir.symlink_to(mod_dir.resolve())
                mod_sync_report[mod_dir.name] = "[Server]: Synced"
            else:
                mod_sync_report[mod_dir.name] = (
                    "[Server]: Skipped, no Palworld server directory provided"
                )

            continue

        if client_mod_dir is not None:
            symlinked_dir = Path(f"{client_mod_dir.resolve()}/{mod_dir.name}")
            symlinked_dir.symlink_to(mod_dir.resolve())
            mod_sync_report[mod_dir.name] = "[Client]: Synced"
            continue
        else:
            mod_sync_report[mod_dir.name] = (
                "[Client]: Skipped, no Palworld client directory provided"
            )

    return mod_sync_report


if __name__ == "__main__":
    load_dotenv()
    main()
