#ifndef UE4SS_SDK_BP_AIAction_WildLife_HPP
#define UE4SS_SDK_BP_AIAction_WildLife_HPP

class UBP_AIAction_WildLife_C : public UBP_AIAction_CanCombatBase_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0158 (size: 0x8)
    FVector SpawnedPosition;                                                          // 0x0160 (size: 0x18)
    FVector GoalPosition;                                                             // 0x0178 (size: 0x18)
    bool InitEnd;                                                                     // 0x0190 (size: 0x1)
    FVector PrePos;                                                                   // 0x0198 (size: 0x18)
    FTimerHandle StackTimerHandle;                                                    // 0x01B0 (size: 0x8)
    FVector SpawnerLocation;                                                          // 0x01B8 (size: 0x18)
    double WalkingTimer;                                                              // 0x01D0 (size: 0x8)
    double tempDeltaTime;                                                             // 0x01D8 (size: 0x8)
    bool RestMode;                                                                    // 0x01E0 (size: 0x1)
    double FollowRandomDistance;                                                      // 0x01E8 (size: 0x8)
    FTimerHandle StateUpdateTimerHandle;                                              // 0x01F0 (size: 0x8)
    FVector RestStartPosition;                                                        // 0x01F8 (size: 0x18)
    TEnumAsByte<EWildPalAIMoveMode::Type> MoveMode;                                   // 0x0210 (size: 0x1)
    TEnumAsByte<EWildPalAIRestType::Type> RestType;                                   // 0x0211 (size: 0x1)
    double WalkingRadius;                                                             // 0x0218 (size: 0x8)
    bool IsGroupBehavior;                                                             // 0x0220 (size: 0x1)
    bool IsCancelThisAIAction;                                                        // 0x0221 (size: 0x1)
    bool IsTickStop;                                                                  // 0x0222 (size: 0x1)
    FTimerHandle TickStopTimer;                                                       // 0x0228 (size: 0x8)
    FTimerHandle DrinkWaterTimerHandle;                                               // 0x0230 (size: 0x8)
    bool DrinkWaterCheckFlag;                                                         // 0x0238 (size: 0x1)
    class AActor* CurrentTarget;                                                      // 0x0240 (size: 0x8)
    EPalAIResponseType CurrentResponse;                                               // 0x0248 (size: 0x1)
    bool IsSleep;                                                                     // 0x0249 (size: 0x1)

    void ActionTickAnyThread(class APawn* ControlledPawn, float DeltaSeconds);
    void CheckDrinkWater_ForNotLeader(bool& ChangeAction);
    void SetDrinkWaterFlag();
    void CheckDrinkWater_ForLeader(bool& ChangeState);
    void IsSleepTime(bool& Sleep);
    void ResetSelfAction();
    void PlayNightSleep();
    void RandomRestModeStart();
    void GetLeaderRestMode(bool& Rest);
    void StateUpdate();
    void FollowLeader();
    void SoundEvent(FVector EmitLocation);
    void GetMyLocation(FVector& NewParam);
    void ChangeNextMovePosition(double Radius, FVector CenterPos);
    void OnFail_D878AC8F4430A5C3183029AD1B4F53CF(TEnumAsByte<EPathFollowingResult::Type> MovementResult);
    void OnSuccess_D878AC8F4430A5C3183029AD1B4F53CF(TEnumAsByte<EPathFollowingResult::Type> MovementResult);
    void OnFail_B707D59048A2C3D7CD1D13834143E5F8(TEnumAsByte<EPathFollowingResult::Type> MovementResult);
    void OnSuccess_B707D59048A2C3D7CD1D13834143E5F8(TEnumAsByte<EPathFollowingResult::Type> MovementResult);
    void ActionStart(class APawn* ControlledPawn);
    void ActionTick(class APawn* ControlledPawn, float DeltaSeconds);
    void ActionPause(class APawn* ControlledPawn);
    void ActionResume(class APawn* ControlledPawn);
    void ActionFinished(class APawn* ControlledPawn, TEnumAsByte<EPawnActionResult::Type> WithResult);
    void カスタムイベント_Stack();
    void RestModeUpdate(bool Nest);
    void MoveAndAction(EPalActionType action);
    void RestModeWalk();
    void ActionAbort(class APawn* ControlledPawn);
    void Event_StopFalse();
    void ActionPostTick(class APawn* ControlledPawn, float DeltaSeconds);
    void ExecuteUbergraph_BP_AIAction_WildLife(int32 EntryPoint);
}; // Size: 0x24A

#endif
