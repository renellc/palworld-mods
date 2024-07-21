---@meta

---@class UBP_Action_RaidBossModeChange_C : UPalActionBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AddStatusEventDispatcher FBP_Action_RaidBossModeChange_CAddStatusEventDispatcher
UBP_Action_RaidBossModeChange_C = {}

---@param Element EPalElementType
---@param VisualEffect EPalVisualEffectID
---@param Value TSoftClassPtr<UPalVisualEffectBase>
function UBP_Action_RaidBossModeChange_C:FindModeChangeVisualEffectType(Element, VisualEffect, Value) end
---@param Active boolean
function UBP_Action_RaidBossModeChange_C:SetActiveCharacter(Active) end
function UBP_Action_RaidBossModeChange_C:EmitWarpEffect() end
---@param Target AActor
function UBP_Action_RaidBossModeChange_C:RotateToTargetActor(Target) end
---@param MontageType EPalGeneralMontageType
---@param Rate double
UBP_Action_RaidBossModeChange_C['Play Montage'] = function(MontageType, Rate) end
---@param MontageType EPalGeneralMontageType
function UBP_Action_RaidBossModeChange_C:StopMontage(MontageType) end
function UBP_Action_RaidBossModeChange_C:WarpToBaseCamp() end
---@param MontageType EPalGeneralMontageType
---@param Montage UAnimMontage
function UBP_Action_RaidBossModeChange_C:FindMontage(MontageType, Montage) end
function UBP_Action_RaidBossModeChange_C:OnBeginAction() end
function UBP_Action_RaidBossModeChange_C:OnEndAction() end
---@param EntryPoint int32
function UBP_Action_RaidBossModeChange_C:ExecuteUbergraph_BP_Action_RaidBossModeChange(EntryPoint) end
function UBP_Action_RaidBossModeChange_C:AddStatusEventDispatcher__DelegateSignature() end


