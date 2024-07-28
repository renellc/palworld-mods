-- Table to track hungry pals
local hungry_pal_util = {}
hungry_pal_util.tracked_pals = {}

---@class PalStructure
local function create_pal_structure()
    local pal_table = {} ---@class PalStructure
    pal_table.id = nil ---@type string
    pal_table.base_id = nil ---@type string
    pal_table.hunger = nil ---@type integer
    pal_table.max_hunger = nil ---@type integer
    pal_table.last_slot_eaten = nil ---@type integer
    return pal_table
end

---@param APalAIActionBase UPalAIActionBaseCampRecoverHungry
function hungry_pal_util.track_pal(APalAIActionBase) --param is subclass of UPalAIActionBase
    local pal = create_pal_structure()
    local PalCharacter = APalAIActionBase:GetCharacter() --@type: class: APalCharacter 
    
    local CharacterParameterComponent = PalCharacter.CharacterParameterComponent
    local IndividualParameter = CharacterParameterComponent.IndividualParameter

    pal.id = IndividualParameter:GetCharacterID():ToString()
    pal.max_hunger = CharacterParameterComponent:GetMaxFullStomach()                                                                                                                                                                                                                                    

end

return hungry_pal_util