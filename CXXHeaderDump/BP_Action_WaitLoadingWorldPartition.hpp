#ifndef UE4SS_SDK_BP_Action_WaitLoadingWorldPartition_HPP
#define UE4SS_SDK_BP_Action_WaitLoadingWorldPartition_HPP

class UBP_Action_WaitLoadingWorldPartition_C : public UPalActionBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0140 (size: 0x8)
    FName flagName;                                                                   // 0x0148 (size: 0x8)
    double DelayTime;                                                                 // 0x0150 (size: 0x8)
    double DelayTimer;                                                                // 0x0158 (size: 0x8)
    class APalPlayerCharacter* PlayerCharacter;                                       // 0x0160 (size: 0x8)
    double TimeoutTimer;                                                              // 0x0168 (size: 0x8)
    bool IsLoaded;                                                                    // 0x0170 (size: 0x1)
    FVector WaitWPLocation;                                                           // 0x0178 (size: 0x18)
    FTimerHandle TimerHandle;                                                         // 0x0190 (size: 0x8)
    double forGroundTimer;                                                            // 0x0198 (size: 0x8)
    double forWaterTimer;                                                             // 0x01A0 (size: 0x8)
    bool IsShortRayLength;                                                            // 0x01A8 (size: 0x1)

    void CheckEndAction(double DeltaTime, bool& IsEnd);
    void IsWaterActor(class AActor* TargetActor, bool& IsWater);
    void CheckGround(TEnumAsByte<EGroundHitResult::Type>& Result);
    void CanTimeout(bool& CanTimeout);
    void RequestWaitWorldPartition();
    void CheckLoadLocationDistance(bool& IsReWait);
    void GetFadeInParameter(class UPalHUDDispatchParameter_FadeWidget*& NewParam);
    void ResetCamera();
    void SetMoveDisable(bool Disable);
    void OnBeginAction();
    void OnEndAction();
    void TickAction(float DeltaTime);
    void OnCompleteLoad();
    void OnBreakAction();
    void ExecuteUbergraph_BP_Action_WaitLoadingWorldPartition(int32 EntryPoint);
}; // Size: 0x1A9

#endif
