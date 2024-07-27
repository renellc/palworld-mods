-- Table to track hungry pals
local hungry_pal_util = {}
hungry_pal_util.tracked_pals = {}

---@return table[]
local function create_pal_structure()
    local pal_table = {}
    pal_table.id = nil
    pal_table.base_id = nil
    pal_table.hunger = nil
    pal_table.max_hunger = nil
    pal_table.last_slot_eaten = nil
end

---@param APalAIActionBase UPalAIActionBaseCampRecoverHungry
function hungry_pal_util.track_pal(APalAIActionBase) --param is subclass of UPalAIActionBase
    local pal = create_pal_structure()
    local PalCharacter = APalAIActionBase:GetCharacter() --@type: class: APalCharacter 
    
    local CharacterParameterComponent = PalCharacter.CharacterParameterComponent --@type: class UPalCharacterParameterComponent
    local IndividualParameter = CharacterParameterComponent.IndividualParameter  --@type: class UPalIndividualCharacterParameter
    local SaveParameter = IndividualParameter.SaveParameter                      --@type: struct FPalIndividualCharacterSaveParameter

    pal.id = IndividualParameter.GetCharacterID():ToString()
    pal.max_hunger = CharacterParameterComponent:GetMaxFullStomach()

end

return hungry_pal_util