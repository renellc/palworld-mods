#ifndef UE4SS_SDK_BP_AIAction_WanderingCage_HPP
#define UE4SS_SDK_BP_AIAction_WanderingCage_HPP

class UBP_AIAction_WanderingCage_C : public UPalAIActionBaseCampCage
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0138 (size: 0x8)
    class UObject* Sensor;                                                            // 0x0140 (size: 0x8)
    FVector SpawnedPosition;                                                          // 0x0148 (size: 0x18)
    FVector GoalPosition;                                                             // 0x0160 (size: 0x18)
    double ConstWalkSpeed;                                                            // 0x0178 (size: 0x8)
    class UPalDamageReactionComponent* DamageReaction;                                // 0x0180 (size: 0x8)
    bool InitEnd;                                                                     // 0x0188 (size: 0x1)

    void ChangeNextMovePosition();
    void ActionStart(class APawn* ControlledPawn);
    void ActionTick(class APawn* ControlledPawn, float DeltaSeconds);
    void ActionFinished(class APawn* ControlledPawn, TEnumAsByte<EPawnActionResult::Type> WithResult);
    void ExecuteUbergraph_BP_AIAction_WanderingCage(int32 EntryPoint);
}; // Size: 0x189

#endif
