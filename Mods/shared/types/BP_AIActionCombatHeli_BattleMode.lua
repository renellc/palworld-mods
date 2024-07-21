---@meta

---@class UBP_AIActionCombatHeli_BattleMode_C : UPalAIActionBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field CurrentTarget AActor
---@field Const_BattleDistance double
---@field Const_BattleHeight double
---@field Const_MinHeight double
---@field Const_SideMovePower double
---@field GunComponent UBP_CombatHeliRpidWeaponComponent_FrontMG_C
---@field MisoComponent UBP_CombatHeliRpidWeaponComponent_WingMiso_C
---@field IsBomberMode boolean
---@field BomberComponent UBP_CombatHeliRpidWeaponComponent_Bomber_C
---@field MoveDirectionRight double
---@field tempDeltaTime double
UBP_AIActionCombatHeli_BattleMode_C = {}

---@param Distance double
---@param Near boolean
function UBP_AIActionCombatHeli_BattleMode_C:IsNearTarget2D(Distance, Near) end
function UBP_AIActionCombatHeli_BattleMode_C:SetMoveVelocity() end
---@param DeltaTime double
function UBP_AIActionCombatHeli_BattleMode_C:RotateToTarget(DeltaTime) end
---@param TargetActor AActor
function UBP_AIActionCombatHeli_BattleMode_C:FindTarget(TargetActor) end
---@param ControlledPawn APawn
---@param DeltaSeconds float
function UBP_AIActionCombatHeli_BattleMode_C:ActionTick(ControlledPawn, DeltaSeconds) end
---@param ControlledPawn APawn
function UBP_AIActionCombatHeli_BattleMode_C:ActionStart(ControlledPawn) end
---@param EntryPoint int32
function UBP_AIActionCombatHeli_BattleMode_C:ExecuteUbergraph_BP_AIActionCombatHeli_BattleMode(EntryPoint) end


