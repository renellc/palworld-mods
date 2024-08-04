local PAL_STORAGE_MAX_PAGES = 32
local PAL_STORAGE_MAX_SLOTS_PER_PAGE = 30

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

        -- In a user's Pal storage, there can be gaps between Pal storage slots. This means that the next slot in the
        -- page might not necessarily mean there are no more Pals in the user's storage. Because of this, we must loop
        -- through every slot in the user's storage to ensure we aren't missing any Pals that might've been placed
        -- on a later page manually.
        --
        -- If there is a way to first sort a user's storage and ensure there are no gaps between storage slots, then
        -- this should be refactored to loop through the storage until it reaches an empty slot.
        local curr_page_idx = page_idx
        local curr_slot_idx = slot_idx

        while curr_page_idx < PAL_STORAGE_MAX_PAGES do
            local pal_slot = pal_storage:GetSlot(curr_page_idx, curr_slot_idx)
            if pal_slot:IsEmpty() then
                curr_slot_idx = curr_slot_idx + 1

                if curr_slot_idx == PAL_STORAGE_MAX_SLOTS_PER_PAGE then
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

---@class PalStorageFilterer
---@field pal_storage UPalPlayerDataPalStorage
---@field filters (fun(pal_slot): boolean)[]
local PalStorageFilterer = {}

---@param pal_storage UPalPlayerDataPalStorage
function PalStorageFilterer.new(pal_storage)
    ---@type PalStorageFilterer
    local self = {
        pal_storage = pal_storage,
        filtered_items = {},
        filters = {}
    }

    setmetatable(self, { __index = PalStorageFilterer })
    return self
end

---@param filter_fn fun(pal_slot): boolean Returns true if the pal slot matches the filter, false otherwise
function PalStorageFilterer:add_filter(filter_fn)
    table.insert(self.filters, filter_fn)
end

function PalStorageFilterer:clear_filters()
    self.filters = {}
end

---@class PalStorageFilterResultItem
---@field pal_slot UPalIndividualCharacterSlot
---@field page integer
---@field slot integer
local PalStorageFilterResultItem = {}

---@return PalStorageFilterResultItem
function PalStorageFilterer:filter()
    local filtered_pals = {} ---@type PalStorageFilterResultItem[]

    for page, slot, pal_slot in pal_storage_ipairs(self.pal_storage) do
        for _, filter_fn in ipairs(self.filters) do
            if filter_fn(pal_slot) then
                ---@type PalStorageFilterResultItem
                local result = {
                    pal_slot = pal_slot,
                    page = page,
                    slot = slot,
                }

                table.insert(filtered_pals, result)
            end
        end
    end

    return filtered_pals
end

return {
    PalStorageFilterer,
    pal_storage_ipairs,
}
