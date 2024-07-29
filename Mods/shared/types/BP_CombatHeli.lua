---@meta

---@class ABP_CombatHeli_C : APalNPC
---@field UberGraphFrame FPointerToUberGraphFrame
---@field CombatHeli_HeliBody UStaticMeshComponent
---@field CombatHeli_Gun UStaticMeshComponent
---@field PalBodyPartsBox UPalBodyPartsBoxComponent
---@field BP_CombatHeliRpidWeaponComponent_Bomber UBP_CombatHeliRpidWeaponComponent_Bomber_C
---@field BP_CombatHeliRpidWeaponComponent_WingMiso UBP_CombatHeliRpidWeaponComponent_WingMiso_C
---@field BP_CombatHeliRpidWeaponComponent_FrontMG UBP_CombatHeliRpidWeaponComponent_FrontMG_C
---@field TargetActor AActor
ABP_CombatHeli_C = {}

---@return ABP_CombatHeli_C
function ABP_CombatHeli_C:get() end

function ABP_CombatHeli_C:SetHideAll() end
function ABP_CombatHeli_C:ShootMGBullet() end
function ABP_CombatHeli_C:ReceiveBeginPlay() end
---@param EntryPoint int32
function ABP_CombatHeli_C:ExecuteUbergraph_BP_CombatHeli(EntryPoint) end


