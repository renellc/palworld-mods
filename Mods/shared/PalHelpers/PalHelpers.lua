local PalHelpers = {}

---@return UPalUtility
function PalHelpers.GetPalUtility()
    pal_util = StaticFindObject("/Script/Pal.Default__PalUtility") ---@class UPalUtility?
    if not pal_util:IsValid() then
        error("Failed to get PalUtility instance")
    end

    return pal_util
end

---@return UPalUIUtility | string
function PalHelpers.GetPalUIUtility()
    pal_ui_util = StaticFindObject("/Script/Pal.Default__PalUIUtility") ---@class UPalUIUtility?
    if not pal_ui_util:IsValid() then
        error("Failed to get PalUIUtility instance")
    end

    return pal_ui_util
end

---@param db_char_param UPalDatabaseCharacterParameter
---@param pal_char_id FName
---@return string
function PalHelpers.GetPalNameFromCharacterId(db_char_param, pal_char_id)
    local out = {}
    db_char_param:GetLocalizedCharacterName(pal_char_id, out)
    return out["OutText"]:ToString()
end

---@param pal_ui_utility UPalUIUtility
---@param world_ctx AActor
---@param passive_skill_id FName
---@return string
function PalHelpers.GetPassiveSkillNameFromId(pal_ui_utility, world_ctx, passive_skill_id)
    local out = {}
    pal_ui_utility:GetPassiveSkillName(world_ctx, passive_skill_id, out)
    return out["outName"]:ToString()
end

--- Gets the appropriate functions for controlling Alert Dialogs. This function is meant for use only on a client
--- instance. Running this on a server instance might result in unexpected behavior.
---
--- Example:
---
--- ```lua
--- local UEHelpers = require("UEHelpers")
--- local PalHelpers = require("PalHelpers")
---
--- local world_ctx = UEHelpers.GetWorldContextObject()
--- local pal_util = PalHelpers.GetPalUtility()
---
--- ShowAlert, CloseAlert = PalHelpers.GetAlertDialogControls(world_ctx, pal_util)
---
--- RegisterKeyBind(Key.I, { ModifierKey.CONTROL }, function()
--- 	ShowAlert("My Alert Message!")
--- end)
---
--- RegisterKeyBind(Key.U, { ModifierKey.CONTROL }, function()
--- 	CloseAlert()
--- end)
---
--- ```
---@param world_ctx AActor
---@param pal_util UPalUtility
---@return fun(message: string) ShowAlert , fun() CloseAlert
function PalHelpers.GetAlertDialogControls(world_ctx, pal_util)
    local alert_dialog_widget = nil ---@type UWBP_PalDialog_C|nil

    ---@param message string
    local function show_alert(message)
        if alert_dialog_widget == nil then -- Find alert widget
            local pre_id, post_id
            pre_id, post_id = RegisterHook("/Game/Pal/Blueprint/UI/Dialog/WBP_PalDialog.WBP_PalDialog_C:OnSetup",
                function(target_dialog_widget) ---@param target_dialog_widget UWBP_PalDialog_C
                    alert_dialog_widget = target_dialog_widget:get()
                    alert_dialog_widget:SetupUI(alert_dialog_widget.Parameter.DialogType, FText(message))
                    UnregisterHook("/Game/Pal/Blueprint/UI/Dialog/WBP_PalDialog.WBP_PalDialog_C:OnSetup", pre_id, post_id)
                end)
            pal_util:Alert(world_ctx, FText(""))
        else
            if not alert_dialog_widget:IsActivated() then
                alert_dialog_widget:Push(alert_dialog_widget:GetClass(), alert_dialog_widget:GetParam())
            end
            alert_dialog_widget:SetupUI(alert_dialog_widget.Parameter.DialogType, FText(message))
        end
    end

    local function close_alert()
        if alert_dialog_widget == nil then
            return
        end
        alert_dialog_widget:Close()
    end

    return show_alert, close_alert
end

--- Gets the PalPlayerCharacter by the player's nick name. If the player is not found then nil is returned
--- 
---@param player_nick_name string
---@return APalPlayerCharacter?
function PalHelpers.GetPlayerCharacterByNickName(player_nick_name)
	local players = FindAllOf("PalPlayerCharacter") ---@type APalPlayerCharacter[]?
	if not players then
		error("Could not retrieve full list of players")
	end

	for _, player in pairs(players or {}) do
		-- TODO: Accessing the player's name like this might be unsafe and might cause the game to dereference a null
		-- pointer. This should be changed if there is another way to access this data.
		local params = player.CharacterParameterComponent.IndividualParameter.SaveParameter
		local curr_player_name = params.NickName:ToString()

		if player_nick_name == curr_player_name then
			return player
		end
	end

	return nil
end

--- Safely initializes code given if the mod is running on a server or a client
--- 
--- Example:
--- 
--- ```Lua
--- local PalHelpers = require("PalHelpers")
--- 
--- local function module_initializer()
---     -- Initialize module
--- end
--- 
--- PalHelpers.SafeInitialize(module_initializer, 'server' | 'client')
--- 
--- ```
---@param initializer fun()
---@param platform_context 'server' | 'client'
function PalHelpers.SafeInitialize(initializer, platform_context)
    if platform_context == 'server' then
        if #(FindAllOf("PalPlayerController") or {}) ~= 0 then
            initializer()
        else
            local pre_id, post_id
            pre_id, post_id = RegisterHook("/Script/Engine.PlayerController:ServerAcknowledgePossession", function()
                initializer()
                UnregisterHook("/Script/Engine.PlayerController:ServerAcknowledgePossession", pre_id, post_id)
            end)
        end

    elseif platform_context == 'client' then
        local PalPlayerControllers = FindAllOf("PalPlayerController") ---@type APalPlayerController[]?
        for _, PalPlayerController in pairs(PalPlayerControllers or {}) do
            if PalPlayerController.Pawn:IsValid() and PalPlayerController.Pawn:IsPlayerControlled() then
                initializer()
                return
            end
        end
        LoopAsync(1000, function()
            PalPlayerControllers = FindAllOf("PalPlayerController") ---@type APalPlayerController[]?
            for _, PalPlayerController in pairs(PalPlayerControllers or {}) do
                if PalPlayerController.Pawn:IsValid() and PalPlayerController.Pawn:IsPlayerControlled() then
                    initializer()
                    return true
                end
            end
            return false -- keep looping
        end)
    else
        error("Platform context not given as 'client' or 'server' but as '" .. tostring(platform_context) .. "'")
    end
end

return PalHelpers
