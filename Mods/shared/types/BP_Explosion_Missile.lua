---@meta

---@class ABP_Explosion_Missile_C : ABP_ExplosionAttackBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Explosive UNiagaraComponent
ABP_Explosion_Missile_C = {}

---@return ABP_Explosion_Missile_C
function ABP_Explosion_Missile_C:get() end

---@param Value int32
function ABP_Explosion_Missile_C:GetEffectValue(Value) end
---@param Effect EPalAdditionalEffectType
function ABP_Explosion_Missile_C:GetEffectType(Effect) end
---@param AttackType EPalAttackType
function ABP_Explosion_Missile_C:GetWeaponAttackType(AttackType) end
---@param PSystem UNiagaraComponent
function ABP_Explosion_Missile_C:BndEvt__BP_Explosion_Low_Explosive_K2Node_ComponentBoundEvent_0_OnNiagaraSystemFinished__DelegateSignature(PSystem) end
function ABP_Explosion_Missile_C:ReceiveBeginPlay() end
---@param EntryPoint int32
function ABP_Explosion_Missile_C:ExecuteUbergraph_BP_Explosion_Missile(EntryPoint) end


