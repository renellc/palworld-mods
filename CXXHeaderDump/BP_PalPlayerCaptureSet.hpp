#ifndef UE4SS_SDK_BP_PalPlayerCaptureSet_HPP
#define UE4SS_SDK_BP_PalPlayerCaptureSet_HPP

class ABP_PalPlayerCaptureSet_C : public APalUIInframeRenderer
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0290 (size: 0x8)
    class URectLightComponent* RectLight;                                             // 0x0298 (size: 0x8)
    class UPointLightComponent* PointLight_Rim_Up;                                    // 0x02A0 (size: 0x8)
    class UPointLightComponent* PointLight_Rim_BackL;                                 // 0x02A8 (size: 0x8)
    class UPointLightComponent* PointLight_Rim_BackR;                                 // 0x02B0 (size: 0x8)
    class UPointLightComponent* PointLight_Main;                                      // 0x02B8 (size: 0x8)
    class UChildActorComponent* ChildActor;                                           // 0x02C0 (size: 0x8)
    class USceneCaptureComponent2D* SceneCaptureComponent2D;                          // 0x02C8 (size: 0x8)
    class USceneComponent* DefaultSceneRoot;                                          // 0x02D0 (size: 0x8)
    FBP_PalPlayerCaptureSet_COnCompletedSetup OnCompletedSetup;                       // 0x02D8 (size: 0x10)
    void OnCompletedSetup();
    FTimerHandle delayHandle;                                                         // 0x02E8 (size: 0x8)
    FRotator DefaultRotation;                                                         // 0x02F0 (size: 0x18)
    FRotator TargetRotation;                                                          // 0x0308 (size: 0x18)
    FVector DefaultCameraPosition;                                                    // 0x0320 (size: 0x18)
    double RotateInterpolationRate;                                                   // 0x0338 (size: 0x8)

    void ResetCameraLocation();
    void UpdateShowOnlyActors();
    void Add Camera Relative Location(FVector AddLocation);
    void ResetRotation();
    void AddRotation(FRotator AddRotator);
    void GetDisplayCharacterActor(class ABP_Player_ForUI_C*& UIDisplayPlayer);
    void RequestMyPlayer();
    void RequestByCharacterMakeInfo(FPalPlayerDataCharacterMakeInfo MakeInfo);
    void CancelDelayHandle();
    void DelayCompleteSetup();
    void SetupDelayHandle();
    void AdjustCamera(double TargetActorBoundSize);
    void Reset();
    void ReceiveBeginPlay();
    void ReceiveEndPlay(TEnumAsByte<EEndPlayReason::Type> EndPlayReason);
    void ReceiveTick(float DeltaSeconds);
    void ExecuteUbergraph_BP_PalPlayerCaptureSet(int32 EntryPoint);
    void OnCompletedSetup__DelegateSignature();
}; // Size: 0x340

#endif
