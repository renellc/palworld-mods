---@meta

---@class UBP_NPCWeaponGenerator_C : UPalNPCWeaponGenerator
---@field UberGraphFrame FPointerToUberGraphFrame
UBP_NPCWeaponGenerator_C = {}

---@return UBP_NPCWeaponGenerator_C
function UBP_NPCWeaponGenerator_C:get() end

---@param WeaponActor APalWeaponBase
function UBP_NPCWeaponGenerator_C:OnSpawnEvent(WeaponActor) end
---@param EntryPoint int32
function UBP_NPCWeaponGenerator_C:ExecuteUbergraph_BP_NPCWeaponGenerator(EntryPoint) end


