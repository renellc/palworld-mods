---@meta

---@class UBP_BulletSpeedModifier_C : UPalBulletModifierComponent
---@field UberGraphFrame FPointerToUberGraphFrame
UBP_BulletSpeedModifier_C = {}

---@return UBP_BulletSpeedModifier_C
function UBP_BulletSpeedModifier_C:get() end

---@param Bullet APalBullet
function UBP_BulletSpeedModifier_C:Initialize(Bullet) end
---@param EntryPoint int32
function UBP_BulletSpeedModifier_C:ExecuteUbergraph_BP_BulletSpeedModifier(EntryPoint) end


