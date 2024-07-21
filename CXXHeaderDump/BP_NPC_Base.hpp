#ifndef UE4SS_SDK_BP_NPC_Base_HPP
#define UE4SS_SDK_BP_NPC_Base_HPP

class ABP_NPC_Base_C : public APalNPC
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0940 (size: 0x8)
    class UBP_NPCInteractionComponent_C* BP_NPCInteractionComponent;                  // 0x0948 (size: 0x8)
    class UPalFacialComponent* PalFacial;                                             // 0x0950 (size: 0x8)
    class UPalNavigationInvokerComponent* PalNavigationInvoker;                       // 0x0958 (size: 0x8)
    class UPalInteractableSphereComponentNative* BP_InteractableSphere;               // 0x0960 (size: 0x8)
    class UPalShooterComponent* PalShooter;                                           // 0x0968 (size: 0x8)
    FBP_NPC_Base_COnDestoryEvent OnDestoryEvent;                                      // 0x0970 (size: 0x10)
    void OnDestoryEvent(class APalCharacter* Character);
    TSubclassOf<class UAnimInstance> AnimLayerClass;                                  // 0x0980 (size: 0x8)

    void SetMaterial(class UMaterialInstance* Material);
    void SetupInteraction();
    void DestoryWeapon();
    void CreateWeapon();
    void カスタムイベント_2(FPalDeadInfo DeadInfo);
    void ReceiveBeginPlay();
    void ReceiveEndPlay(TEnumAsByte<EEndPlayReason::Type> EndPlayReason);
    void BndEvt__BP_NPC_Base_CharacterMovement_K2Node_ComponentBoundEvent_0_OnJumpDelegate__DelegateSignature(class UPalCharacterMovementComponent* Component);
    void SetActive_Interact_ToAll(bool Active);
    void カスタムイベント_0(class APalCharacter* InCharacter);
    void ExecuteUbergraph_BP_NPC_Base(int32 EntryPoint);
    void OnDestoryEvent__DelegateSignature(class APalCharacter* Character);
}; // Size: 0x988

#endif
