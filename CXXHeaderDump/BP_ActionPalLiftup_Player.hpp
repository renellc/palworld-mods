#ifndef UE4SS_SDK_BP_ActionPalLiftup_Player_HPP
#define UE4SS_SDK_BP_ActionPalLiftup_Player_HPP

class UBP_ActionPalLiftup_Player_C : public UPalAction_Liftup
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0140 (size: 0x8)

    class UAnimMontage* FindLiftupMontage();
    void MovementSetFlag(bool Disable);
    void WeaponSetFlag(bool Disable);
    void ProcessNotify(FName NotifyName);
    void StopAnimation();
    void SetActionTargetAIToLiftup();
    void OnNotifyEnd_8B03B5994FC01C08681CF1BC191894CA(FName NotifyName);
    void OnNotifyBegin_8B03B5994FC01C08681CF1BC191894CA(FName NotifyName);
    void OnInterrupted_8B03B5994FC01C08681CF1BC191894CA(FName NotifyName);
    void OnBlendOut_8B03B5994FC01C08681CF1BC191894CA(FName NotifyName);
    void OnCompleted_8B03B5994FC01C08681CF1BC191894CA(FName NotifyName);
    void OnEndAction();
    void OnBreakAction();
    void PlayStartLiftupMontage();
    void OnBeginAction();
    void ExecuteUbergraph_BP_ActionPalLiftup_Player(int32 EntryPoint);
}; // Size: 0x148

#endif
