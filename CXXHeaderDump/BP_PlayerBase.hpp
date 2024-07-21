#ifndef UE4SS_SDK_BP_PlayerBase_HPP
#define UE4SS_SDK_BP_PlayerBase_HPP

class ABP_PlayerBase_C : public APalPlayerCharacter
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0C30 (size: 0x8)
    class UCapsuleComponent* DeadColllision;                                          // 0x0C38 (size: 0x8)
    class UBP_PalTimerPointLightComponent_C* PlayerLight;                             // 0x0C40 (size: 0x8)
    class UPalRiderComponent* Rider Component;                                        // 0x0C48 (size: 0x8)
    bool bIsInCapturedCage;                                                           // 0x0C50 (size: 0x1)
    class ABP_Lamp_C* Lantern;                                                        // 0x0C58 (size: 0x8)

    void ClearLantern();
    void CreateLantern();
    void SetPlayerLightEnable(bool IsEnable);
    void OnLoaded_02DA547E4C37CAA237537F82C5DB3211(class UObject* Loaded);
    void RegisterSwimEvent();
    void OnEnterWater();
    void OnExitWater();
    void UnregisterSwimEvent();
    void BndEvt__BP_PlayerBase_CapsuleComponent_K2Node_ComponentBoundEvent_0_ComponentBeginOverlapSignature__DelegateSignature(class UPrimitiveComponent* OverlappedComponent, class AActor* OtherActor, class UPrimitiveComponent* OtherComp, int32 OtherBodyIndex, bool bFromSweep, const FHitResult& SweepResult);
    void BndEvt__BP_PlayerBase_CapsuleComponent_K2Node_ComponentBoundEvent_1_ComponentEndOverlapSignature__DelegateSignature(class UPrimitiveComponent* OverlappedComponent, class AActor* OtherActor, class UPrimitiveComponent* OtherComp, int32 OtherBodyIndex);
    void OnCompleteInitializeParameterDelegate_イベント_0(class APalCharacter* InCharacter);
    void ReceiveBeginPlay();
    void OnUpdateLevelDelegate_イベント_0(int32 addLevel, int32 nowLevel);
    void ReceiveEndPlay(TEnumAsByte<EEndPlayReason::Type> EndPlayReason);
    void BndEvt__BP_PlayerBase_CharacterMovement_K2Node_ComponentBoundEvent_2_OnJumpDelegate__DelegateSignature(class UPalCharacterMovementComponent* Component);
    void ExecuteUbergraph_BP_PlayerBase(int32 EntryPoint);
}; // Size: 0xC60

#endif
