---@meta

---@class UBP_CombatHeliRpidWeaponComponent_FrontMG_C : UBP_CombatHeliRpidWeaponComponent_C
---@field UberGraphFrame FPointerToUberGraphFrame
UBP_CombatHeliRpidWeaponComponent_FrontMG_C = {}

---@return UBP_CombatHeliRpidWeaponComponent_FrontMG_C
function UBP_CombatHeliRpidWeaponComponent_FrontMG_C:get() end

---@param DeltaSeconds float
function UBP_CombatHeliRpidWeaponComponent_FrontMG_C:ReceiveTick(DeltaSeconds) end
---@param EntryPoint int32
function UBP_CombatHeliRpidWeaponComponent_FrontMG_C:ExecuteUbergraph_BP_CombatHeliRpidWeaponComponent_FrontMG(EntryPoint) end


