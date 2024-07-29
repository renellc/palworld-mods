---@meta

---@class UBP_AIAction_Death_SelfDestruct_C : UBP_AIAction_Death_C
---@field DeathActionMap TMap<EPalWazaID, TSubclassOf<UBP_ActionDeath_C>>
UBP_AIAction_Death_SelfDestruct_C = {}

---@return UBP_AIAction_Death_SelfDestruct_C
function UBP_AIAction_Death_SelfDestruct_C:get() end

---@param DeathAction TSubclassOf<UBP_ActionDeath_C>
function UBP_AIAction_Death_SelfDestruct_C:GetDeathActionClass(DeathAction) end


