local MOD_NAME = "PalboxSearch"

local PAL_UTIL = nil

local UTIL = require("palbox_search_util")

local function init()
	PAL_UTIL = StaticFindObject("/Script/Pal.Default__PalUtility")
	if not PAL_UTIL:IsValid() then
		UTIL.log("Could not load PalUtility")
		return false
	end

	return true
end


local function get_player_character(player_name)
	local players = FindAllOf("PalPlayerCharacter")
	if not players then
		error("Could not retrieve full list of players")
	end

	for _, player in pairs(players) do
		-- TODO: Accessing the player's name like this might be unsafe and might cause the game to dereference a null
		-- pointer. This should be changed if there is another way to access this data.
		local params = player.CharacterParameterComponent.IndividualParameter.SaveParameter
		local curr_player_name = params.NickName:ToString()

		if player_name == curr_player_name then
			return player
		end
	end

	return nil
end

IS_INITIALIZED = init()

if IS_INITIALIZED then
	UTIL.log("Successfully initialized")
else
	UTIL.log("Failed to initialize")
end

RegisterHook("/Script/Pal.PalGameStateInGame:BroadcastChatMessage", function(_, data)
	if not IS_INITIALIZED then
		UTIL.log("Will not process command, PalboxSearch failed to initialize")
		return
	end

	local is_successful, error = pcall(function()
		local player_name = data:get().Sender:ToString()
		local player = get_player_character(player_name)
		if not player then
			UTIL.log(string.format("Player %s does not exist", player_name))
			return
		end

		local player_state = PAL_UTIL:GetPlayerStateByPlayer(player)

		if not player_state then
			UTIL.log(string.format("Could not get player state for %s", data:get().Sender:ToString()))
			return
		end

		local pal_storage = player_state:GetPalStorage()
		if not pal_storage then
			UTIL.log(string.format("Could not get pal storage for player %s", data:get().Sender:ToString()))
			return
		end

		local pal = pal_storage:GetSlot(0, 0):GetHandle():TryGetIndividualParameter()
		if not pal then
			UTIL.log("Could not get first pal for player")
			return
		end

		UTIL.log(pal.SaveParameter.CharacterID:ToString())
		UTIL.log(tostring(pal.GetLevel()))

		local passives = pal:GetPassiveSkillList()
		for _, passive in ipairs(passives) do
			-- TODO: filter out passives based on player input
			UTIL.log(passive:get():ToString())
		end
	end)

	if not is_successful then
		-- TODO: Add better error handling
	end
end)
