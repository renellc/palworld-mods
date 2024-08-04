local PAL_UTIL ---@class UPalUtility

local PAL_UI_UTIL ---@class UPalUIUtility

local UTIL = require("palbox_search_util")
local command_parser = require("command_parser")
local UEHelpers = require("UEHelpers")
local PalHelpers = require("PalHelpers")
local palstorage = require("PalHelpers.palstorage")
local strutil = require("strutil")

local function init()
	local _, pal_util_ret_val = pcall(PalHelpers.GetPalUtility)
	if type(pal_util_ret_val) == "string" then
		UTIL.log(pal_util_ret_val)
		return false
	else
		PAL_UTIL = pal_util_ret_val
	end

	local _, pal_ui_util_ret_val = pcall(PalHelpers.GetPalUIUtility)
	if type(pal_ui_util_ret_val) == "string" then
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

		local message = ""
		local EditableTextInstances = FindAllOf("EditableText") ---@class UEditableText[]
		if not EditableTextInstances then
			print("No EditableTextInstances were found")
			return
		else
			for _, EditableText in pairs(EditableTextInstances) do
				if string.match(EditableText:GetFullName(), "EditableText /Engine/Transient.GameEngine(.-)EditableText_ChatInput") then
					message = EditableText:GetText():ToString()
				end
			end
		end

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

		local results = {}

		-- This is treated as a set
		local passives_filters = nil
		if ret.passives ~= nil then
			passives_filters = {}
			for _, word in ipairs(strutil.split(ret.passives, ",")) do
				passives_filters[string.lower(word)] = true
			end
		end

		-- TODO: This for loop causes the game to lag for a split second when a command is registered. I suspect that it
		-- has to do with getting a Pal's handle and retrieving the localized name for a Pal. This should be
		-- updated if there's a better way to retrieve this data, or if caching is possible without incurring too much of a
		-- memory hit
		for page, slot, pal_slot in palstorage.pal_storage_ipairs(pal_storage) do
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

			local found = false

			if passives_filters ~= nil then
				local passives = pal:GetPassiveSkillList()
				for _, passive in ipairs(passives) do
					local passive_name = string.lower(PalHelpers.GetPassiveSkillNameFromId(PAL_UI_UTIL, WORLD_CTX, passive:get()))
					passive_name = table.concat(strutil.split(passive_name, " "), "")

					if passives_filters[passive_name] then
						found = true
						break
					end
				end
			end

			if ret.pal ~= nil then
				if passives_filters ~= nil then
					found = found and PAL_CHAR_ID_TO_LOCALIZED_NAMES[pal_char_id_as_str] == ret.pal
				else
					found = PAL_CHAR_ID_TO_LOCALIZED_NAMES[pal_char_id_as_str] == ret.pal
				end
			end

			if found then
				table.insert(results, {
					name = PAL_CHAR_ID_TO_LOCALIZED_NAMES[pal_char_id_as_str],
					page = page,
					slot = slot
				})
			end

			::continue::
		end

		local alert_message = {}
		for _, result in ipairs(results) do
			local row = math.ceil(result.slot / 6)
			local slot = ((result.slot - 1) % 6) + 1

			table.insert(alert_message, string.format("%s - Page %d, Row %d Slot %d", result.name, result.page, row, slot))
		end

		local dialogues = FindAllOf("PalDialogParameterBase") ---@type UPalDialogParameterBase[]?
		PAL_UTIL:Alert(WORLD_CTX, FText(table.concat(alert_message, "\n")))
	end)

	if not is_successful then
		-- TODO: Add better error handling
	end
end)
