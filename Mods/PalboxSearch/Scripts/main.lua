local MOD_NAME = "PalboxSearch"

local PAL_UTIL = nil
local PAL_UI_UTIL = nil

local UTIL = require("palbox_search_util")
local command_parser = require("command_parser")

local PAL_STORAGE_MAX_PAGES = 32
local PAL_STORAGE_MAX_SLOTS_PER_PAGE = 30

local function init()
	PAL_UTIL = StaticFindObject("/Script/Pal.Default__PalUtility")
	if not PAL_UTIL:IsValid() then
		UTIL.log("Could not load PalUtility")
		return false
	end

	PAL_UI_UTIL = StaticFindObject("/Script/Pal.Default__PalUIUtility")
	if not PAL_UI_UTIL:IsValid() then
		UTIL.log("Could not load PalUIUtility")
		return false
	end

	return true
end

local function get_player_character(player_name)
	local players = FindAllOf("PalPlayerCharacter")
	if not players then
		error("Could not retrieve full list of players")
	end

	for _, player in pairs(players or {}) do
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

local PAL_CHAR_ID_TO_LOCALIZED_NAMES = {}

local WORLD_CTX = nil
local DB_CHAR_PARAM = nil

RegisterHook("/Script/Pal.PalGameStateInGame:BroadcastChatMessage", function(_, data)
	if not IS_INITIALIZED then
		UTIL.log("Will not process command, PalboxSearch failed to initialize")
		return
	end


	local is_successful, error = pcall(function()
		if not WORLD_CTX then
			UTIL.log("not found world ctx")
			WORLD_CTX = FindFirstOf("PalGetWorldUObject")
		end

		if not DB_CHAR_PARAM then
			UTIL.log("not found db")
			DB_CHAR_PARAM = PAL_UTIL:GetDatabaseCharacterParameter(WORLD_CTX)
		end

		local player_name = data:get().Sender:ToString()
		local player = get_player_character(player_name)
		if not player then
			UTIL.log(string.format("Player %s does not exist", player_name))
			return
		end

		---@type string
		local message = data:get().Message:ToString()
		local parse_success, ret = pcall(command_parser.parse, message)
		if not parse_success then
			UTIL.log("Error: " .. ret)
			return
		end

		for key, value in pairs(ret) do
			UTIL.log(key .. " " .. value)
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

		-- TODO: This for loop causes the game to lag for a split second when a command is registered. I suspect that it
		-- has to do with getting a Pal's handle and retrieving the localized name for a Pal. This should be
		-- updated if there's a better way to retrieve this data, or if caching is possible without incurring too much of a
		-- memory hit
		local found_last_pal = false
		for i = 1, PAL_STORAGE_MAX_PAGES, 1 do
			for j = 1, PAL_STORAGE_MAX_SLOTS_PER_PAGE, 1 do
				local pal_slot = pal_storage:GetSlot(i - 1, j - 1)
				if pal_slot:IsEmpty() then
					found_last_pal = true
					break
				end

				local pal = pal_slot:GetHandle():TryGetIndividualParameter()
				if not pal then
					UTIL.log(string.format("Could not get pal at %d, %d for player %s", i, j, player_name))
					goto continue
				end

				local passives = pal:GetPassiveSkillList()
				local passive_skill_names = {}
				for _, passive in ipairs(passives) do
					-- TODO: filter out passives based on player input
					local passive_name = {}
					PAL_UI_UTIL:GetPassiveSkillName(WORLD_CTX, passive:get(), passive_name)
					table.insert(passive_skill_names, string.lower(passive_name["outName"]:ToString()))
				end

				local pal_char_id = pal:GetCharacterID()
				local pal_char_id_as_str = pal_char_id:ToString()

				-- I have a sneaking suspicion that getting the localized name for a Pal is a slow operation due to the game's
				-- data format. This is a small optimization to avoid doing the extra lookup through GetLocalizedCharacterName.
				if PAL_CHAR_ID_TO_LOCALIZED_NAMES[pal_char_id_as_str] == nil then
					local localized = {}
					DB_CHAR_PARAM:GetLocalizedCharacterName(pal_char_id, localized)
					PAL_CHAR_ID_TO_LOCALIZED_NAMES[pal_char_id_as_str] = string.lower(localized["OutText"]:ToString())
				end

				UTIL.log(string.format("%s: %s", PAL_CHAR_ID_TO_LOCALIZED_NAMES[pal_char_id_as_str],
					table.concat(passive_skill_names, ", ")))
				::continue::
			end

			if found_last_pal then
				break
			end
		end
	end)

	if not is_successful then
		-- TODO: Add better error handling
	end
end)
