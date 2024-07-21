#ifndef UE4SS_SDK_WBP_PalCharacterSlotBase_HPP
#define UE4SS_SDK_WBP_PalCharacterSlotBase_HPP

class UWBP_PalCharacterSlotBase_C : public UPalUserWidget
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0408 (size: 0x8)
    class UWBP_PalCharacterIconBase_C* myIconWidget;                                  // 0x0410 (size: 0x8)
    class UPalIndividualCharacterSlot* TargetSlot;                                    // 0x0418 (size: 0x8)
    FWBP_PalCharacterSlotBase_COnUpdateSlot OnUpdateSlot;                             // 0x0420 (size: 0x10)
    void OnUpdateSlot(class UPalIndividualCharacterSlot* TargetSlot);
    FWBP_PalCharacterSlotBase_COnSetEmpty OnSetEmpty;                                 // 0x0430 (size: 0x10)
    void OnSetEmpty();
    FWBP_PalCharacterSlotBase_COnSetValidSlot OnSetValidSlot;                         // 0x0440 (size: 0x10)
    void OnSetValidSlot();
    FWBP_PalCharacterSlotBase_COnTargetCharacterUpdateHP OnTargetCharacterUpdateHP;   // 0x0450 (size: 0x10)
    void OnTargetCharacterUpdateHP(int64 nowHP, int64 nowMaxHP);
    FTimerHandle checkTargetConditionTimerHandle;                                     // 0x0460 (size: 0x8)
    bool lastCombatState;                                                             // 0x0468 (size: 0x1)
    FWBP_PalCharacterSlotBase_COnNotifyWorkDetail OnNotifyWorkDetail;                 // 0x0470 (size: 0x10)
    void OnNotifyWorkDetail(bool IsWorking);
    FWBP_PalCharacterSlotBase_COnNotifyBattleModeChanged OnNotifyBattleModeChanged;   // 0x0480 (size: 0x10)
    void OnNotifyBattleModeChanged(bool IsBattleMode);
    FWBP_PalCharacterSlotBase_COnBeginTargetCharacterSleep OnBeginTargetCharacterSleep; // 0x0490 (size: 0x10)
    void OnBeginTargetCharacterSleep();
    FWBP_PalCharacterSlotBase_COnEndTargetCharacterSleep OnEndTargetCharacterSleep;   // 0x04A0 (size: 0x10)
    void OnEndTargetCharacterSleep();
    FWBP_PalCharacterSlotBase_COnBeginTargetCharacterEat OnBeginTargetCharacterEat;   // 0x04B0 (size: 0x10)
    void OnBeginTargetCharacterEat();
    FWBP_PalCharacterSlotBase_COnEndTargetCharacterEat OnEndTargetCharacterEat;       // 0x04C0 (size: 0x10)
    void OnEndTargetCharacterEat();
    FPalInstanceID SyncId;                                                            // 0x04D0 (size: 0x30)
    FWBP_PalCharacterSlotBase_COnSetRarity OnSetRarity;                               // 0x0500 (size: 0x10)
    void OnSetRarity(bool IsBoss, bool IsRare);
    FWBP_PalCharacterSlotBase_COnUpdateReviveTimer OnUpdateReviveTimer;               // 0x0510 (size: 0x10)
    void OnUpdateReviveTimer(double NowTimer);
    FWBP_PalCharacterSlotBase_COnUpdateWorkId OnUpdateWorkId;                         // 0x0520 (size: 0x10)
    void OnUpdateWorkId(FGuid WorkId, bool IsFixedAssign);
    FWBP_PalCharacterSlotBase_COnFavoriteUpdated OnFavoriteUpdated;                   // 0x0530 (size: 0x10)
    void OnFavoriteUpdated();
    bool WaitingSync;                                                                 // 0x0540 (size: 0x1)

    void OnUpdateFavorite_Internal();
    void OnUpdateWorkId_Internal(class UPalCharacterParameterComponent* Parameter);
    void GetIndividualParameter(class UPalIndividualCharacterParameter*& Parameter);
    void GetIndividualHandle(class UPalIndividualCharacterHandle*& Handle);
    void GetIndividualSlot(class UPalIndividualCharacterSlot*& Slot);
    void OnUpdateReviveTimer_Internal(float NowReviveTimer);
    void OnSyncIndividualParameter(FPalInstanceID InstanceId);
    void UnbindActorEvent(class UPalIndividualCharacterHandle* Handle);
    void BindActorEvent(class UPalIndividualCharacterHandle* Handle);
    void OnTargetCharacterActionNotify(const class UPalActionBase* action, FName NotifyName);
    void OnTargetBattleModeChanged(bool bIsBattleMode);
    void UnbindParameterEvent(class UPalIndividualCharacterHandle* Handle);
    void BindParameterEvent(class UPalIndividualCharacterHandle* Handle);
    void CheckTargetCondition();
    void On Update HP(FFixedPoint64 nowHP, FFixedPoint64 nowMaxHP);
    void UnbindEvents();
    void BindEvents();
    void OnUpdateSlot_Internal(class UPalIndividualCharacterSlot* Slot, class UPalIndividualCharacterHandle* LastHandle);
    void RegisterCharacterIconWidget(class UWBP_PalCharacterIconBase_C*& iconWidget);
    void Setup(class UPalIndividualCharacterSlot* newTargetSlot);
    void OnInitialized();
    void ExecuteUbergraph_WBP_PalCharacterSlotBase(int32 EntryPoint);
    void OnFavoriteUpdated__DelegateSignature();
    void OnUpdateWorkId__DelegateSignature(FGuid WorkId, bool IsFixedAssign);
    void OnUpdateReviveTimer__DelegateSignature(double NowTimer);
    void OnSetRarity__DelegateSignature(bool IsBoss, bool IsRare);
    void OnEndTargetCharacterEat__DelegateSignature();
    void OnBeginTargetCharacterEat__DelegateSignature();
    void OnEndTargetCharacterSleep__DelegateSignature();
    void OnBeginTargetCharacterSleep__DelegateSignature();
    void OnNotifyBattleModeChanged__DelegateSignature(bool IsBattleMode);
    void OnNotifyWorkDetail__DelegateSignature(bool IsWorking);
    void OnTargetCharacterUpdateHP__DelegateSignature(int64 nowHP, int64 nowMaxHP);
    void OnSetValidSlot__DelegateSignature();
    void OnSetEmpty__DelegateSignature();
    void OnUpdateSlot__DelegateSignature(class UPalIndividualCharacterSlot* TargetSlot);
}; // Size: 0x541

#endif
