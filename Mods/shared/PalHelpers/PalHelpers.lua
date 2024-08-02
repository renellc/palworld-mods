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

PalHelpers["PAL_STORAGE_MAX_PAGES"] = 32
PalHelpers["PAL_STORAGE_MAX_SLOTS_PER_PAGE"] = 30

---@param pal_storage UPalPlayerDataPalStorage
function PalHelpers.pal_storage_ipairs(pal_storage)
    local page_idx = 0
    local slot_idx = 0

    local function iterator()
        if page_idx == PalHelpers["PAL_STORAGE_MAX_PAGES"] then
            return nil
        end

        if slot_idx == PalHelpers["PAL_STORAGE_MAX_SLOTS_PER_PAGE"] then
            page_idx = page_idx + 1
            slot_idx = 0
        end

        -- In a user's Pal storage, there can be gaps between Pal storage slots. This means that the next slot in the
        -- page might not necessarily mean there are no more Pals in the user's storage. Because of this, we must loop
        -- through every slot in the user's storage to ensure we aren't missing any Pals that might've been placed
        -- on a later page manually.
        --
        -- If there is a way to first sort a user's storage and ensure there are no gaps between storage slots, then
        -- this should be refactored to loop through the storage until it reaches an empty slot.
        local curr_page_idx = page_idx
        local curr_slot_idx = slot_idx

        while curr_page_idx < PalHelpers["PAL_STORAGE_MAX_PAGES"] do
            local pal_slot = pal_storage:GetSlot(curr_page_idx, curr_slot_idx)
            if pal_slot:IsEmpty() then
                curr_slot_idx = curr_slot_idx + 1

                if curr_slot_idx == PalHelpers["PAL_STORAGE_MAX_SLOTS_PER_PAGE"] then
                    curr_page_idx = curr_page_idx + 1
                    curr_slot_idx = 0
                    goto continue
                end
            else
                page_idx = curr_page_idx
                slot_idx = curr_slot_idx + 1

                -- We add one to these to follow 1-based indexing in Lua
                return curr_page_idx + 1, curr_slot_idx + 1, pal_slot
            end

            ::continue::
        end

        return nil
    end

    return iterator
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
        if alert_dialog_widget == nil then
            pal_util:Alert(world_ctx, FText(message))

            local target_widget = FindFirstOf("WBP_PalDialog_C") ---@class UWBP_PalDialog_C?
            if target_widget ~= nil and target_widget:IsValid() then
                alert_dialog_widget = target_widget
            end
        end
    end

    local function close_alert()
        if alert_dialog_widget == nil then
            return
        end

        alert_dialog_widget:Close()
        alert_dialog_widget = nil
    end

    return show_alert, close_alert
end

return PalHelpers
