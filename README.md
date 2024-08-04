# palworld-mods

A collection of custom Palworld mods

## Syncing mods to the Palworld client and server directories

In order to sync mods correctly, you'll first need to set the correct environment variables that specify the
directories for the Palworld client and/or the Palworld server. To do this:

1. Create a `.env` file in the `python` directory
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

Next, run the Palworld mod manager script by using the following command in your terminal. Make sure you have
Python 3.10+ and Poetry installed before running the following commands.

1. Change directory to the `python` directory
2. Run `poetry install` to make sure all Python dependencies are installed
3. Run `poetry run palworld_mod_manager.py -s` to sync the mods from this repo into your Palworld directories.

## Code Style Conventions

### Variables

Variables are written in `snake_case`. If the variable is a global variable, then it is written in `SHOUTING_SNAKE_CASE`.

### Functions

Functions are written in `snake_case`.

### Classes

Classes are written in `PascalCase`. Variables within the class are written in `snake_case`. You can define a class by
doing the following:

```lua
---@class MyClass
---@field field_a string
---@field field_b number
local MyClass = {}

function MyClass.new()
    local self = {
        field_a = "Field A",
        field_b = 42,
    }
    setmetatable(self, { __index = MyClass })
    return self
end

function MyClass:some_method()
    -- method here...
end
```
