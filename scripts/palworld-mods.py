import os
import argparse

from pathlib import Path


PALWORLD_DEFAULT_DIR = "C:\\Program Files (x86)\\Steam\\steamapps\\common\\Palworld"


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
        palworld_mods_dir = Path(f"{PALWORLD_DEFAULT_DIR}/Pal/Binaries/Win64/Mods")
        repo_mods_dir = Path(f"{curr_dir}/Mods")

        for mod in palworld_mods_dir.iterdir():
            if mod.is_symlink():
                mod.rmdir()

        for mod in repo_mods_dir.iterdir():
            symlink_dir = Path(f"{palworld_mods_dir.resolve()}/{mod.name}")
            symlink_dir.symlink_to(mod)

    exit(0)
