local PalHelpers = {}

---@return UPalUtility
function PalHelpers.GetPalUtility()
    pal_util = StaticFindObject("/Script/Pal.Default__PalUtility") ---@class UPalUtility?
    if not pal_util:IsValid() then
        error("Failed to get PalUtility instance")
    end

    return pal_util
end

---@return UPalUIUtility
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

return PalHelpers
