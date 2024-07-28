--[[
I need to get a list of active players
I need to store this list and keep track of when a new player joins the server

Every so often, I need to
    go through the currently connected players
    compare against known players
    if unknown player, add to the list and add 1 to the number of active players (for xp division)
    Perhaps it'd be easier to set the xp rate to 1/num active players, that way, new xp can get distributed so that level ups happen all at once
    And when a levelup does happen, that will also trigger exp sharing
    This exp sharing needs to occur before the exp adjustments (this mod needs to load first)
    People who aren't online might not get to the correct level, so I can just modify their level directly and by referencing a stored party level
    That's what I will do, on level up, level up every character

    This is much simpler, on level up, level up everyone
    Take exp gained by players since last check and distribute that amoung everyone
    Can leave exp scaling the same and just divide it myself and then set people's exp to the new party exp
]]
   --

local script_path = debug.getinfo(1, "S").source:sub(2)
script_path = script_path:match("(.*/.*/)") or script_path:match("(.*\\.*\\)")

local function is_empty(t)
    for _ in pairs(t or {}) do
        return false
    end
    return true
end

local scale_fac = { 0.875, 0.9736842105263158, 1.0, 1.0, 1.0, 1.0, 1.0, 0.9991941982272361, 0.9987608426270136, 0.9985443959243085, 0.9973035439137135, 0.9959864155603582, 0.994016454749439, 0.9912920210611583, 0.9879338842975207, 0.9830692130570229, 0.9766225091840143, 0.9684519442406456, 0.9579863739591219, 0.9448547821732599, 0.9287861511350679, 0.9092666580744941, 0.885906757912746, 0.8585168087121212, 0.8268961278426552, 0.7909590664786544, 0.7507265095253471, 0.7064154037548066, 0.6584439111613025, 0.6073159507700743, 0.5536989338463043, 0.4984152838576131, 0.4423777954865291, 0.3865257073462337, 0.33183566413003845, 0.2792432372411406, 0.2295878529667023, 0.18360154125113326, 0.1418657612677599, 0.10478130899937067, 0.07256651089015462, 0.04525972706758212, 0.0227363531370106, 0.00472453962281035, -0.009163981042654028, -0.019397890817029324, -0.026495421603432625, -0.030990723258252615, -0.033407177453483844, -0.03423219395281172, -0.03390230341272031, -0.03279185936074959, -0.03120895472392011, -0.02939568676677441 }
local exp_shift = {}
if is_empty(exp_shift) then
    local PalExpDatabase = FindFirstOf("PalExpDatabase") ---@class UPalExpDatabase

    for i = 1, 54 do
        exp_shift[i] = math.floor(-1.0 * scale_fac[i] * PalExpDatabase:GetNextExp(i + 1, true))
    end
end

local function getPlayers()
    local all_player_list = FindAllOf("PalPlayerCharacter") ---@type APalPlayerCharacter[]?
    local real_players_list = {}
    local real_players_levels = {}
    local i = 1
    for k, player in pairs(all_player_list or {}) do
        local player_params = player.CharacterParameterComponent.IndividualParameter.SaveParameter
        if type(player_params.Level) == "number" or type(player_params.NickName) == "string" then
            real_players_list[i] = player
            real_players_levels[i] = player.CharacterParameterComponent.IndividualParameter.SaveParameter.Level
            i = i + 1
        end
    end
    return real_players_list, real_players_levels
end
local online_players, player_levels = getPlayers()

-- Load and deserialize the party table
local party = {}
local function loadParty()
    local file = io.open(script_path .. "party.txt", "r")
    if file then
        for line in file:lines() do
            local key, value = line:match("([^=]+)=([^=]+)")
            if key and value then
                party[key] = tonumber(value) or value
            end
        end
        file:close()
    end
end
loadParty()

-- Serialize and save the party table
local function saveParty()
    local file = io.open(script_path .. "party.txt", "w")
    if file then
        for k, v in pairs(party) do
            file:write(k .. "=" .. tostring(v) .. "\n")
        end
        file:close()
    end
end

-- Load and deserialize the party table
local known_players = {}
local num_players = 0
local function loadKnownPlayers()
    local file = io.open(script_path .. "known_players.txt", "r")
    if file then
        for line in file:lines() do
            local key, value = line:match("([^=]+)=([^=]+)")
            if key and value then
                known_players[key] = true -- Store the player name as a key
            end
        end
        file:close()
    end
    num_players = 0
    for _ in pairs(known_players or {}) do
        num_players = num_players + 1
    end
end
loadKnownPlayers()

-- Serialize and save the party table
local function saveKnownPlayers()
    local file = io.open(script_path .. "known_players.txt", "w")
    if file then
        for player_name in pairs(known_players or {}) do
            file:write(player_name .. "=true\n") -- Write each player name as a key
        end
        file:close()
    end
end

local function add_levels(player, added_levels)
    player_params = player.CharacterParameterComponent.IndividualParameter.SaveParameter
    if added_levels > 0 then
        player_params.Level = player_params.Level + added_levels
        local controller = player.GetPalPlayerController()
        local state = controller.GetPalPlayerState()
        local tech_data = state.TechnologyData
        tech_data.TechnologyPoint = tech_data.TechnologyPoint + 6 * added_levels
        player_params.UnusedStatusPoint = player_params.UnusedStatusPoint + added_levels
    end
end

local accounted_players = {}
local function level_up()
    print("Level UP!")
    online_players, player_levels = getPlayers()
    local cur_lv = 0
    for k, player in pairs(online_players or {}) do
        print("Iterating through players")
        cur_lv = player.CharacterParameterComponent.IndividualParameter.SaveParameter.Level
        print(tostring(cur_lv))
        if cur_lv > party["level"] then
            if cur_lv == 2 then
                player.CharacterParameterComponent.IndividualParameter.SaveParameter.Exp = player
                .CharacterParameterComponent.IndividualParameter.SaveParameter.Exp + exp_shift[1]
            end
            if cur_lv ~= 55 then
                print("Player Level Up")
                player.CharacterParameterComponent.IndividualParameter.SaveParameter.Exp = player
                .CharacterParameterComponent.IndividualParameter.SaveParameter.Exp + exp_shift[cur_lv]
            end
            party["level"] = cur_lv
            party["exp"]   = player.CharacterParameterComponent.IndividualParameter.SaveParameter.Exp
        end
    end

    for k, player in pairs(online_players or {}) do
        local player_params = player.CharacterParameterComponent.IndividualParameter.SaveParameter
        local player_name = player_params.NickName:ToString()

        if accounted_players[player_name] == nil then
            accounted_players[player_name] = { last_exp = party["exp"] }
        end

        while not type(player_params.Level) == "number" do
            ExecuteWithDelay(1000, function()
                print("Waiting for player level to become a number")
            end)
        end
        add_levels(player, party["level"] - player_params.Level)
        player_params.Exp = party["exp"]
        accounted_players[player_name]["last_exp"] = party["exp"]
    end

    saveParty()
end


local carry = 0.0
local function syncPlayers()
    online_players = getPlayers()

    local new_exp = 0

    for k, player in pairs(online_players or {}) do
        local player_params = player.CharacterParameterComponent.IndividualParameter.SaveParameter
        if player_params.Level > party["level"] then
            level_up()
        end
    end

    for k, player in pairs(online_players or {}) do
        local player_params = player.CharacterParameterComponent.IndividualParameter.SaveParameter
        local player_name = tostring(player_params.NickName:ToString())

        if known_players[player_name] == nil then
            print("Adding new player")
            known_players[player_name] = true
            saveKnownPlayers()
            num_players = num_players + 1
            party["exp"] = math.floor(party["exp"] * (num_players - 1) / num_players + 0.5)
        end

        if accounted_players[player_name] == nil then
            add_levels(player, party["level"] - player_params.Level)
            player_params.Exp = party["exp"]
            accounted_players[player_name] = { last_exp = player_params.Exp }
        end
        new_exp = new_exp + player_params.Exp - accounted_players[player_name]["last_exp"]
        -- print("Player Name: " .. player_name)
        -- print("Player Exp: " .. tostring(player_params.Exp))
        -- print("Last Exp: " .. tostring(accounted_players[player_name]["last_exp"]))
    end

    -- print("New exp: " .. tostring(new_exp/num_players))
    -- print("Num players: " .. tostring(num_players))
    carry = carry + party["exp"] + new_exp / num_players - math.floor(party["exp"] + new_exp / num_players)
    -- print("Carry: " .. tostring(carry))

    if carry >= 1 then
        party["exp"] = math.floor(party["exp"] + new_exp / num_players + carry)
        carry = 0.0
    else
        party["exp"] = math.floor(party["exp"] + new_exp / num_players)
    end
    print("Party Exp: " .. tostring(party["exp"]))
    for k, player in pairs(online_players or {}) do
        local player_params = player.CharacterParameterComponent.IndividualParameter.SaveParameter
        local player_name = player_params.NickName:ToString()

        player_params.Exp = party["exp"]
        accounted_players[player_name]["last_exp"] = party["exp"]
    end
    saveParty()
end

RegisterHook("/Script/Engine.PlayerController:ServerAcknowledgePossession", function(Context)
    print("A new player has joined! Adding them to the list")

    ExecuteWithDelay(1000, function()
        online_players, player_levels = getPlayers()
    end)
end)

RegisterHook("/Script/Pal.PalTechnologyData:OnUpdateLocalPlayerLevel", function(Context, addLevel, nowLevel)
    print("Level UP!")
    online_players, player_levels = getPlayers()
    local cur_lv = 0
    for k, player in pairs(online_players or {}) do
        print("Iterating through players")
        cur_lv = player.CharacterParameterComponent.IndividualParameter.SaveParameter.Level
        print(tostring(cur_lv))
        if cur_lv > party["level"] then
            if cur_lv == 2 then
                player.CharacterParameterComponent.IndividualParameter.SaveParameter.Exp = player
                .CharacterParameterComponent.IndividualParameter.SaveParameter.Exp + exp_shift[1]
            end
            if cur_lv ~= 55 then
                print("Player Level Up")
                player.CharacterParameterComponent.IndividualParameter.SaveParameter.Exp = player
                .CharacterParameterComponent.IndividualParameter.SaveParameter.Exp + exp_shift[cur_lv]
            end
            party["level"] = cur_lv
            party["exp"]   = player.CharacterParameterComponent.IndividualParameter.SaveParameter.Exp
        end
    end

    for k, player in pairs(online_players or {}) do
        local player_params = player.CharacterParameterComponent.IndividualParameter.SaveParameter
        local player_name = player_params.NickName:ToString()

        if accounted_players[player_name] == nil then
            accounted_players[player_name] = { last_exp = party["exp"] }
        end

        while not type(player_params.Level) == "number" do
            ExecuteWithDelay(1000, function()
                print("Waiting for player level to become a number")
            end)
        end
        add_levels(player, party["level"] - player.Level)
        player_params.Exp = party["exp"]
        accounted_players[player_name]["last_exp"] = party["exp"]
    end

    saveParty()
end)

LoopAsync(1000, function()
    print("Syncing players!")
    syncPlayers()
    return false
end)

RegisterHook("/Script/Pal.PalGameStateInGame:BroadcastChatMessage", function()
    print(_VERSION)
end)

