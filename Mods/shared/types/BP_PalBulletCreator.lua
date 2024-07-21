---@meta

---@class UBP_PalBulletCreator_C : UPalBulletCreator
---@field ModifierMap TMap<EPalPassiveSkillEffectType, TSubclassOf<UPalBulletModifierComponent>>
UBP_PalBulletCreator_C = {}

---@param WorldContextObject UObject
---@param Weapon APalWeaponBase
---@param BulletClass TSubclassOf<APalBullet>
---@param SpawnTransform FTransform
---@param collisionHandlingOverride ESpawnActorCollisionHandlingMethod
---@param Owner AActor
---@param Instigator APawn
---@return APalBullet
function UBP_PalBulletCreator_C:CreateBullet(WorldContextObject, Weapon, BulletClass, SpawnTransform, collisionHandlingOverride, Owner, Instigator) end


