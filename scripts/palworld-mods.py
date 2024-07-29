import os
import argparse

from pathlib import Path


def read_env_file(env_file_path: str):
    env_vars = dict()

    with open(env_file_path) as f:
        lines = f.readlines()
        for line in lines:
            key, value = line.split("=")
            env_vars[key] = value

        f.close()

    return env_vars


def create_mod(mod_name: str):
    mod_dir = f"./Mods/{mod_name}"
    scripts_dir = f"{mod_dir}/Scripts"
    enabled_txt = f"{mod_dir}/enabled.txt"
    main_file = f"{scripts_dir}/main.lua"

    os.makedirs(scripts_dir)

    with open(main_file, "w+") as f:
        f.close()

    with open(enabled_txt, "w+") as f:
        f.close()


if __name__ == "__main__":
    env = read_env_file("./.env")

    if "PALWORLD_CLIENT_DIR" not in env and "PALWORLD_SERVER_DIR" not in env:
        print(
            "No environment variable set for PALWORLD_CLIENT_DIR or PALWORLD_SERVER_DIR! One of these must be set"
        )
        exit(1)

    parser = argparse.ArgumentParser(
        prog="Palworld Mod Manager",
        description="Manages mods in this repo for Palworld",
    )

    parser.add_argument(
        "-c",
        "--create",
        metavar="MOD_NAME",
        type=str,
        help="Create a new mod folder for Palworld",
    )
    parser.add_argument(
        "-s",
        "--sync",
        action=argparse.BooleanOptionalAction,
        help="Syncs the mods in this repository with the mods folder in the Palworld directory",
    )

    args = parser.parse_args()

    if args.create is None and args.sync is None:
        print("No command given! Use help to see available commands")
        exit(1)

    curr_dir = os.getcwd()

    if args.create:
        create_mod(args.create)

    if args.sync:
        if "PALWORLD_CLIENT_DIR" in env:
            dir = env["PALWORLD_CLIENT_DIR"]
            client_dir = Path(f"{dir}/Pal/Binaries/Win64/Mods")
            for mod in client_dir.iterdir():
                if mod.is_symlink():
                    mod.rmdir()

        if "PALWORLD_SERVER_DIR" in env:
            dir = env["PALWORLD_SERVER_DIR"]
            server_dir = Path(f"{dir}/Pal/Binaries/Win64/Mods")
            for mod in server_dir.iterdir():
                if mod.is_symlink():
                    mod.rmdir()

        repo_mods_dir = Path(f"{curr_dir}/Mods")

        for mod in repo_mods_dir.iterdir():
            enabled_txt = Path(f"{mod.resolve()}/enabled.txt")
            if not enabled_txt.exists():
                continue

            with open(enabled_txt.resolve()) as f:
                lines = f.readlines()
                is_server_mod = False
                for line in lines:
                    key, value = line.split("=")
                    if key == "SERVER":
                        is_server_mod = True if value == "true" else False

                if is_server_mod:
                    if "PALWORLD_SERVER_DIR" not in env:
                        print(
                            f"Cannot sink {mod.name}. Palworld server directory not specified"
                        )
                        continue
                    server_dir = env["PALWORLD_SERVER_DIR"]
                    symlink_dir = Path(f"{server_dir}/Pal/Binaries/Win64/Mods/{mod.name}")
                    symlink_dir.symlink_to(mod)
                    print(f"Synced {mod.name} to Palworld server directory")
                else:
                    if "PALWORLD_CLIENT_DIR" not in env:
                        print(
                            f"Cannot sink {mod.name}. Palworld client directory not specified"
                        )
                        continue

                    client_dir = env["PALWORLD_CLIENT_DIR"]
                    symlink_dir = Path(f"{client_dir}/Pal/Binaries/Win64/Mods/{mod.name}")
                    symlink_dir.symlink_to(mod)
                    print(f"Synced {mod.name} to Palworld client directory")
                f.close()

    exit(0)
