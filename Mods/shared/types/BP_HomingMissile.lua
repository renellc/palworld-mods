---@meta

---@class ABP_HomingMissile_C : ABP_AttackBulletBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Niagara UNiagaraComponent
---@field SM_MissileExhaust UStaticMeshComponent
---@field SM_Missile UStaticMeshComponent
---@field IsExprosed boolean
---@field HomingStartRandimTimeMin double
---@field HpmingAccele double
ABP_HomingMissile_C = {}

---@return ABP_HomingMissile_C
function ABP_HomingMissile_C:get() end

---@param HitComp UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param Hit FHitResult
function ABP_HomingMissile_C:OnHitToActor(HitComp, OtherActor, OtherComp, Hit) end
---@param ExplosionClass TSubclassOf<ABP_ExplosionAttackBase_C>
function ABP_HomingMissile_C:GetExplosionClass(ExplosionClass) end
---@param AttackType EPalAttackType
function ABP_HomingMissile_C:GetBulletAttackType(AttackType) end
---@param Target APalCharacter
function ABP_HomingMissile_C:SetAttackTarget(Target) end
function ABP_HomingMissile_C:ReceiveBeginPlay() end
---@param HitComp UPrimitiveComponent
---@param OtherCharacter AActor
---@param OtherComp UPrimitiveComponent
---@param Hit FHitResult
function ABP_HomingMissile_C:OnDestroy(HitComp, OtherCharacter, OtherComp, Hit) end
---@param EntryPoint int32
function ABP_HomingMissile_C:ExecuteUbergraph_BP_HomingMissile(EntryPoint) end


