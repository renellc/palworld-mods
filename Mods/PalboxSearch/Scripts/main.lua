local PAL_UTIL ---@class UPalUtility

local PAL_UI_UTIL ---@class UPalUIUtility

local UTIL = require("palbox_search_util")
local command_parser = require("command_parser")
local UEHelpers = require("UEHelpers")
local PalHelpers = require("PalHelpers")
local palstorage = require("PalHelpers.palstorage")
local strutil = require("strutil")
local ChatMessageGetter = require("ChatMessageGetter")

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

IS_INITIALIZED = init()

if IS_INITIALIZED then
	UTIL.log("Successfully initialized")
else
	UTIL.log("Failed to initialize")
end

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
		local player = PalHelpers.GetPlayerCharacterByNickName(player_name)
		if player == nil or not player:IsValid() then
			UTIL.log(string.format("Player %s does not exist", player_name))
			return
		end

		ChatMessageGetter.AddMessageCallback(function(message)
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

			local storage_filterer = palstorage.PalStorageFilterer.new(pal_storage)

			if ret.pal ~= nil then
				storage_filterer:add_filter(function(pal_slot)
					local pal = pal_slot:GetHandle():TryGetIndividualParameter()
					if pal == nil or not pal:IsValid() then
						return false
					end

					local normalized_input = string.lower(ret.pal)
					local pal_name = string.lower(PalHelpers.GetPalNameFromCharacterId(DB_CHAR_PARAM, pal:GetCharacterID()))

					return normalized_input == pal_name
				end)
			end

			-- This is treated as a set
			local passives_filters = nil
			if ret.passives ~= nil then
				passives_filters = {}
				for _, word in ipairs(strutil.split(ret.passives, ",")) do
					passives_filters[string.lower(word)] = true
				end
			end

			if passives_filters ~= nil then
				storage_filterer:add_filter(function(pal_slot)
					local pal = pal_slot:GetHandle():TryGetIndividualParameter()
					if pal == nil or not pal:IsValid() then
						return false
					end

					local passives = pal:GetPassiveSkillList()
					for _, passive in ipairs(passives) do
						local passive_name = string.lower(PalHelpers.GetPassiveSkillNameFromId(PAL_UI_UTIL, WORLD_CTX, passive:get()))
						passive_name = table.concat(strutil.split(passive_name, " "), "")

						if passives_filters[passive_name] then
							return true
						end
					end

					return false
				end)
			end

			local filtered_pals = storage_filterer:filter()

			local alert_message = {}
			for _, result in ipairs(filtered_pals) do
				local row = math.ceil(result.slot / 6)
				local slot = ((result.slot - 1) % 6) + 1

				local pal = result.pal_slot:GetHandle():TryGetIndividualParameter()
				if pal == nil or not pal:IsValid() then
					return
				end

				local pal_name = PalHelpers.GetPalNameFromCharacterId(
					DB_CHAR_PARAM, pal:GetCharacterID())

				table.insert(alert_message, string.format("%s - Page %d, Row %d Slot %d", pal_name, result.page, row, slot))
			end


			PAL_UTIL:Alert(WORLD_CTX, FText(table.concat(alert_message, "\n")))
		end)
	end)
end)
