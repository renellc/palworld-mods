#ifndef UE4SS_SDK_BP_ActionPairStandbyBase_HPP
#define UE4SS_SDK_BP_ActionPairStandbyBase_HPP

class UBP_ActionPairStandbyBase_C : public UPalActionBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0140 (size: 0x8)
    class UPalAIActionBase* PettingCallAction;                                        // 0x0148 (size: 0x8)
    TSubclassOf<class UBP_AIActionPairCallBase_C> CallAIActionClass;                  // 0x0150 (size: 0x8)

    void IsValidTarget(bool& IsValid);
    void OnSetCallAIAction(class UPalAIActionBase* CallAction);
    void CheckCancel(bool& Cancel);
    void GetStandByAnime(class UAnimMontage*& Montage);
    void OnBeginAction();
    void TickAction(float DeltaTime);
    void OnEndAction();
    void CancelEvent();
    void ExecuteUbergraph_BP_ActionPairStandbyBase(int32 EntryPoint);
}; // Size: 0x158

#endif
