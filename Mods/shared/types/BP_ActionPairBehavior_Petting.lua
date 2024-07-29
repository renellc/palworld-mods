---@meta

---@class UBP_ActionPairBehavior_Petting_C : UBP_ActionPairBehaviorBase_C
UBP_ActionPairBehavior_Petting_C = {}

---@return UBP_ActionPairBehavior_Petting_C
function UBP_ActionPairBehavior_Petting_C:get() end

---@param Location FVector
---@param Object UObject
---@return UNiagaraComponent
function UBP_ActionPairBehavior_Petting_C:SpawnNiagara(Location, Object) end
---@param Human AActor
---@param Monster AActor
function UBP_ActionPairBehavior_Petting_C:OnCompleted(Human, Monster) end
---@param Montage UAnimMontage
function UBP_ActionPairBehavior_Petting_C:GetHumanAnime(Montage) end


