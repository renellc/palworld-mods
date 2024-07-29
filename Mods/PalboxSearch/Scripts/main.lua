local MOD_NAME = "PalboxSearch"

local PAL_UTIL ---@class UPalUtility

local PAL_UI_UTIL ---@class UPalUIUtility

local UTIL = require("palbox_search_util")
local command_parser = require("command_parser")
local UEHelpers = require("UEHelpers")
local PalHelpers = require("PalHelpers")

local PAL_STORAGE_MAX_PAGES = 32
local PAL_STORAGE_MAX_SLOTS_PER_PAGE = 30

local function init()
	local pal_util_success, pal_util_ret_val = pcall(PalHelpers.GetPalUtility)
	if not pal_util_success then
		UTIL.log(pal_util_ret_val)
		return false
	else
		PAL_UTIL = pal_util_ret_val
	end

	local pal_ui_util_success, pal_ui_util_ret_val = pcall(PalHelpers.GetPalUIUtility)
	if not pal_ui_util_success then
		UTIL.log(pal_ui_util_ret_val)
		return false
	else
		PAL_UI_UTIL = pal_ui_util_ret_val
	end

	return true
end

local function get_player_character(player_name)
	local players = FindAllOf("PalPlayerCharacter") ---@type APalPlayerCharacter[]?
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

---@param pal_storage UPalPlayerDataPalStorage
local function pal_storage_ipairs(pal_storage)
	local page_idx = 0
	local slot_idx = 0

	local function iterator()
		if page_idx == PAL_STORAGE_MAX_PAGES then
			return nil
		end

		if slot_idx == PAL_STORAGE_MAX_SLOTS_PER_PAGE then
			page_idx = page_idx + 1
			slot_idx = 0
		end

		-- TODO fix GetSlot not getting beyond first page
		local curr_page_idx = page_idx
		local curr_slot_idx = slot_idx
		local pal_slot = pal_storage:GetSlot(curr_page_idx, curr_slot_idx)
		if pal_slot:IsEmpty() then
			return nil
		end

		slot_idx = slot_idx + 1

		return curr_page_idx + 1, curr_slot_idx + 1, pal_slot
	end

	return iterator
end

IS_INITIALIZED = init()

if IS_INITIALIZED then
	UTIL.log("Successfully initialized")
else
	UTIL.log("Failed to initialize")
end

local PAL_CHAR_ID_TO_LOCALIZED_NAMES = {}

local WORLD_CTX = nil ---@class AActor
local DB_CHAR_PARAM = nil

RegisterHook("/Script/Pal.PalGameStateInGame:BroadcastChatMessage", function(_, data)
	if not IS_INITIALIZED then
		UTIL.log("Will not process command, PalboxSearch failed to initialize")
		return
	end

	local is_successful, error = pcall(function()
		if not WORLD_CTX then
			WORLD_CTX = UEHelpers.GetWorldContextObject() ---@class AActor?

			if WORLD_CTX == nil or not WORLD_CTX:IsValid() then
				UTIL.log("not found world ctx")
				return
			end
		end

		if DB_CHAR_PARAM == nil then
			DB_CHAR_PARAM = PAL_UTIL:GetDatabaseCharacterParameter(WORLD_CTX)

			if DB_CHAR_PARAM == nil or not DB_CHAR_PARAM:IsValid() then
				UTIL.log("not found db")
				return
			end
		end

		local player_name = data:get().Sender:ToString()
		local player = get_player_character(player_name)
		if player == nil or not player:IsValid() then
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

		local player_state = PAL_UTIL:GetPlayerStateByPlayer(player)
		if player_state == nil or not player_state:IsValid() then
			UTIL.log(string.format("Could not get player state for %s", data:get().Sender:ToString()))
			return
		end

		local pal_storage = player_state:GetPalStorage()
		if pal_storage == nil or not pal_storage:IsValid() then
			UTIL.log(string.format("Could not get pal storage for player %s", data:get().Sender:ToString()))
			return
		end

		-- TODO: This for loop causes the game to lag for a split second when a command is registered. I suspect that it
		-- has to do with getting a Pal's handle and retrieving the localized name for a Pal. This should be
		-- updated if there's a better way to retrieve this data, or if caching is possible without incurring too much of a
		-- memory hit
		local results = {}
		for page, slot, pal_slot in PalHelpers.pal_storage_ipairs(pal_storage) do
			local pal = pal_slot:GetHandle():TryGetIndividualParameter()
			if pal == nil or not pal:IsValid() then
				UTIL.log(string.format("Could not get pal at page %d, slot %d for player %s", page, slot, player_name))
				goto continue
			end

			local pal_char_id = pal:GetCharacterID()
			local pal_char_id_as_str = pal_char_id:ToString()

			-- I have a sneaking suspicion that getting the localized name for a Pal is a slow operation due to the game's
			-- data format. This is a small optimization to avoid doing the extra lookup through GetLocalizedCharacterName.
			if PAL_CHAR_ID_TO_LOCALIZED_NAMES[pal_char_id_as_str] == nil then
				PAL_CHAR_ID_TO_LOCALIZED_NAMES[pal_char_id_as_str] = string.lower(PalHelpers.GetPalNameFromCharacterId(
					DB_CHAR_PARAM, pal_char_id))
			end

			if PAL_CHAR_ID_TO_LOCALIZED_NAMES[pal_char_id_as_str] ~= ret.pal then
				goto continue
			end

			local passives = pal:GetPassiveSkillList()
			local passive_skill_names = {}
			for _, passive in ipairs(passives) do
				-- TODO: filter out passives based on player input
				table.insert(passive_skill_names,
					string.lower(PalHelpers.GetPassiveSkillNameFromId(PAL_UI_UTIL, WORLD_CTX, passive:get())))
			end

			table.insert(results, {
				name = PAL_CHAR_ID_TO_LOCALIZED_NAMES[pal_char_id_as_str],
				page = page,
				slot = slot
			})

			::continue::
		end

		local alert_message = {}
		for _, result in ipairs(results) do
			table.insert(alert_message, string.format("%s Page %d Slot %d", result.name, result.page, result.slot))
		end

		local dialogues = FindAllOf("PalDialogParameterBase") ---@type UPalDialogParameterBase[]?
		PAL_UTIL:Alert(WORLD_CTX, FText(table.concat(alert_message, "\n")))
	end)

	if not is_successful then
		-- TODO: Add better error handling
	end
end)
