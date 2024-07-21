#ifndef UE4SS_SDK_BP_Lamp_HPP
#define UE4SS_SDK_BP_Lamp_HPP

class ABP_Lamp_C : public AActor
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0290 (size: 0x8)
    class UBP_PalTimerPointLightComponent_C* BP_PalTimerPointLightComponent;          // 0x0298 (size: 0x8)
    class UStaticMeshComponent* SM_Lantern_Flames;                                    // 0x02A0 (size: 0x8)
    class UStaticMeshComponent* SM_lamp_01;                                           // 0x02A8 (size: 0x8)
    class USceneComponent* DefaultSceneRoot;                                          // 0x02B0 (size: 0x8)
    bool IsLightEnable;                                                               // 0x02B8 (size: 0x1)
    FTimerHandle TimerHandle;                                                         // 0x02C0 (size: 0x8)
    TSoftObjectPtr<APPSkyCreator> SkyCreatorCache;                                    // 0x02C8 (size: 0x30)

    void CheckLightEnable();
    void SetLightEnable(bool IsEnable);
    void ReceiveBeginPlay();
    void ReceiveEndPlay(TEnumAsByte<EEndPlayReason::Type> EndPlayReason);
    void OnChangeCrouchDelegate_イベント_0(class UPalCharacterMovementComponent* Component, bool IsInCrouch);
    void ExecuteUbergraph_BP_Lamp(int32 EntryPoint);
}; // Size: 0x2F8

#endif
