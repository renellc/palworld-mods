# palworld-mods

A collection of custom Palworld mods

## Syncing mods to the Palworld client and server directories

In order to sync mods correctly, you'll first need to set the correct environment variables that specify the
directories for the Palworld client and/or the Palworld server. To do this:

1. Create a `.env` file in the root of the repository
2. In this file, you can specify two variables
    - `PALWORLD_CLIENT_DIR`: The path of the Palworld client directory
    - `PALWORLD_SERVER_DIR`: The path of the Palworld server directory
    - At least one of these variables must be specified.
    - You set them by doing the following:

```
PALWORLD_CLIENT_DIR=C:\Program Files (x86)\Steam\steamapps\common\Palworld
PALWORLD_SERVER_DIR=C:\Program Files (x86)\Steam\steamapps\common\Palserver
```

Replace the values with the ones on your system.

Next, run the Palworld mod manager script by using the following command in your terminal

`python ./scripts/palworld-mods.py -s`

or 

`python3 ./scripts/palworld-mods.py -s`

This will correctly sync the mods in this repository to the correct Palworld folders.
