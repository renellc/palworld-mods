#ifndef UE4SS_SDK_BP_AIAction_CallBase_HPP
#define UE4SS_SDK_BP_AIAction_CallBase_HPP

class UBP_AIAction_CallBase_C : public UPalAIActionBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0130 (size: 0x8)
    FName CallApproachSpeedName;                                                      // 0x0138 (size: 0x8)
    class APalCharacter* ApproachTarget;                                              // 0x0140 (size: 0x8)
    class APalCharacter* OwnerChara;                                                  // 0x0148 (size: 0x8)
    double WalkSpeedMulti;                                                            // 0x0150 (size: 0x8)
    bool IsSimpleMoveToActor;                                                         // 0x0158 (size: 0x1)
    FVector PrevTargetLocation;                                                       // 0x0160 (size: 0x18)

    void IsInteractingPlayer(bool& IsInteracting);
    void GetMasterCameraRotate(FRotator& CameraRotate);
    void ActionStart(class APawn* ControlledPawn);
    void OnCoopRelease_Event();
    void ActionFinished(class APawn* ControlledPawn, TEnumAsByte<EPawnActionResult::Type> WithResult);
    void OnChildActionFinished(class UPawnAction* action, TEnumAsByte<EPawnActionResult::Type> WithResult);
    void ActionTick(class APawn* ControlledPawn, float DeltaSeconds);
    void ExecuteUbergraph_BP_AIAction_CallBase(int32 EntryPoint);
}; // Size: 0x178

#endif
