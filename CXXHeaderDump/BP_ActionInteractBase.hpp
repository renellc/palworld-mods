#ifndef UE4SS_SDK_BP_ActionInteractBase_HPP
#define UE4SS_SDK_BP_ActionInteractBase_HPP

class UBP_ActionInteractBase_C : public UBP_ActionSimpleMonoMontage_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0168 (size: 0x8)
    FName InteractFlagName;                                                           // 0x0170 (size: 0x8)
    FTimerHandle MovableTimer;                                                        // 0x0178 (size: 0x8)

    void OnJumpDelegate(class UPalCharacterMovementComponent* Component);
    void EnableMove();
    void UnbindDelegates();
    void CancelInteract();
    void BindDelegates();
    void SetPlayerFlags(bool isDisable);
    void OnBeginAction();
    void OnEndAction();
    void ExecuteUbergraph_BP_ActionInteractBase(int32 EntryPoint);
}; // Size: 0x180

#endif
