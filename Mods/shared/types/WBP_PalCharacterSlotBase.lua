---@meta

---@class UWBP_PalCharacterSlotBase_C : UPalUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field myIconWidget UWBP_PalCharacterIconBase_C
---@field TargetSlot UPalIndividualCharacterSlot
---@field OnUpdateSlot FWBP_PalCharacterSlotBase_COnUpdateSlot
---@field OnSetEmpty FWBP_PalCharacterSlotBase_COnSetEmpty
---@field OnSetValidSlot FWBP_PalCharacterSlotBase_COnSetValidSlot
---@field OnTargetCharacterUpdateHP FWBP_PalCharacterSlotBase_COnTargetCharacterUpdateHP
---@field checkTargetConditionTimerHandle FTimerHandle
---@field lastCombatState boolean
---@field OnNotifyWorkDetail FWBP_PalCharacterSlotBase_COnNotifyWorkDetail
---@field OnNotifyBattleModeChanged FWBP_PalCharacterSlotBase_COnNotifyBattleModeChanged
---@field OnBeginTargetCharacterSleep FWBP_PalCharacterSlotBase_COnBeginTargetCharacterSleep
---@field OnEndTargetCharacterSleep FWBP_PalCharacterSlotBase_COnEndTargetCharacterSleep
---@field OnBeginTargetCharacterEat FWBP_PalCharacterSlotBase_COnBeginTargetCharacterEat
---@field OnEndTargetCharacterEat FWBP_PalCharacterSlotBase_COnEndTargetCharacterEat
---@field SyncId FPalInstanceID
---@field OnSetRarity FWBP_PalCharacterSlotBase_COnSetRarity
---@field OnUpdateReviveTimer FWBP_PalCharacterSlotBase_COnUpdateReviveTimer
---@field OnUpdateWorkId FWBP_PalCharacterSlotBase_COnUpdateWorkId
---@field OnFavoriteUpdated FWBP_PalCharacterSlotBase_COnFavoriteUpdated
---@field WaitingSync boolean
UWBP_PalCharacterSlotBase_C = {}

---@return UWBP_PalCharacterSlotBase_C
function UWBP_PalCharacterSlotBase_C:get() end

function UWBP_PalCharacterSlotBase_C:OnUpdateFavorite_Internal() end
---@param Parameter UPalCharacterParameterComponent
function UWBP_PalCharacterSlotBase_C:OnUpdateWorkId_Internal(Parameter) end
---@param Parameter UPalIndividualCharacterParameter
function UWBP_PalCharacterSlotBase_C:GetIndividualParameter(Parameter) end
---@param Handle UPalIndividualCharacterHandle
function UWBP_PalCharacterSlotBase_C:GetIndividualHandle(Handle) end
---@param Slot UPalIndividualCharacterSlot
function UWBP_PalCharacterSlotBase_C:GetIndividualSlot(Slot) end
---@param NowReviveTimer float
function UWBP_PalCharacterSlotBase_C:OnUpdateReviveTimer_Internal(NowReviveTimer) end
---@param InstanceId FPalInstanceID
function UWBP_PalCharacterSlotBase_C:OnSyncIndividualParameter(InstanceId) end
---@param Handle UPalIndividualCharacterHandle
function UWBP_PalCharacterSlotBase_C:UnbindActorEvent(Handle) end
---@param Handle UPalIndividualCharacterHandle
function UWBP_PalCharacterSlotBase_C:BindActorEvent(Handle) end
---@param action UPalActionBase
---@param NotifyName FName
function UWBP_PalCharacterSlotBase_C:OnTargetCharacterActionNotify(action, NotifyName) end
---@param bIsBattleMode boolean
function UWBP_PalCharacterSlotBase_C:OnTargetBattleModeChanged(bIsBattleMode) end
---@param Handle UPalIndividualCharacterHandle
function UWBP_PalCharacterSlotBase_C:UnbindParameterEvent(Handle) end
---@param Handle UPalIndividualCharacterHandle
function UWBP_PalCharacterSlotBase_C:BindParameterEvent(Handle) end
function UWBP_PalCharacterSlotBase_C:CheckTargetCondition() end
---@param nowHP FFixedPoint64
---@param nowMaxHP FFixedPoint64
UWBP_PalCharacterSlotBase_C['On Update HP'] = function(nowHP, nowMaxHP) end
function UWBP_PalCharacterSlotBase_C:UnbindEvents() end
function UWBP_PalCharacterSlotBase_C:BindEvents() end
---@param Slot UPalIndividualCharacterSlot
---@param LastHandle UPalIndividualCharacterHandle
function UWBP_PalCharacterSlotBase_C:OnUpdateSlot_Internal(Slot, LastHandle) end
---@param iconWidget UWBP_PalCharacterIconBase_C
function UWBP_PalCharacterSlotBase_C:RegisterCharacterIconWidget(iconWidget) end
---@param newTargetSlot UPalIndividualCharacterSlot
function UWBP_PalCharacterSlotBase_C:Setup(newTargetSlot) end
function UWBP_PalCharacterSlotBase_C:OnInitialized() end
---@param EntryPoint int32
function UWBP_PalCharacterSlotBase_C:ExecuteUbergraph_WBP_PalCharacterSlotBase(EntryPoint) end
function UWBP_PalCharacterSlotBase_C:OnFavoriteUpdated__DelegateSignature() end
---@param WorkId FGuid
---@param IsFixedAssign boolean
function UWBP_PalCharacterSlotBase_C:OnUpdateWorkId__DelegateSignature(WorkId, IsFixedAssign) end
---@param NowTimer double
function UWBP_PalCharacterSlotBase_C:OnUpdateReviveTimer__DelegateSignature(NowTimer) end
---@param IsBoss boolean
---@param IsRare boolean
function UWBP_PalCharacterSlotBase_C:OnSetRarity__DelegateSignature(IsBoss, IsRare) end
function UWBP_PalCharacterSlotBase_C:OnEndTargetCharacterEat__DelegateSignature() end
function UWBP_PalCharacterSlotBase_C:OnBeginTargetCharacterEat__DelegateSignature() end
function UWBP_PalCharacterSlotBase_C:OnEndTargetCharacterSleep__DelegateSignature() end
function UWBP_PalCharacterSlotBase_C:OnBeginTargetCharacterSleep__DelegateSignature() end
---@param IsBattleMode boolean
function UWBP_PalCharacterSlotBase_C:OnNotifyBattleModeChanged__DelegateSignature(IsBattleMode) end
---@param IsWorking boolean
function UWBP_PalCharacterSlotBase_C:OnNotifyWorkDetail__DelegateSignature(IsWorking) end
---@param nowHP int64
---@param nowMaxHP int64
function UWBP_PalCharacterSlotBase_C:OnTargetCharacterUpdateHP__DelegateSignature(nowHP, nowMaxHP) end
function UWBP_PalCharacterSlotBase_C:OnSetValidSlot__DelegateSignature() end
function UWBP_PalCharacterSlotBase_C:OnSetEmpty__DelegateSignature() end
---@param TargetSlot UPalIndividualCharacterSlot
function UWBP_PalCharacterSlotBase_C:OnUpdateSlot__DelegateSignature(TargetSlot) end


