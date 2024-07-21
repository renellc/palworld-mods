#ifndef UE4SS_SDK_BP_AIAction_invader_March_HPP
#define UE4SS_SDK_BP_AIAction_invader_March_HPP

class UBP_AIAction_invader_March_C : public UPalAIActionBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0130 (size: 0x8)
    FVector MarchGoalPosition;                                                        // 0x0138 (size: 0x18)
    FVector PrevLocation;                                                             // 0x0150 (size: 0x18)
    double StackTimer;                                                                // 0x0168 (size: 0x8)
    FVector StartPoint;                                                               // 0x0170 (size: 0x18)
    double NotStartTimer;                                                             // 0x0188 (size: 0x8)
    bool IsStartAble;                                                                 // 0x0190 (size: 0x1)

    void Warp Move();
    void CountupNotStartTimer(double DeltaTime);
    void Get Controller Ref(class APalAIController*& AICon);
    void MoveToTargetLocation();
    void SetupSkillSlot();
    void AttackNearestMapObject();
    void FindNearPlayer(class APalPlayerCharacter*& Player);
    void Setup(FVector GoalPosition);
    void StartCombatMode();
    void ActionTick(class APawn* ControlledPawn, float DeltaSeconds);
    void ActionStart(class APawn* ControlledPawn);
    void ExecuteUbergraph_BP_AIAction_invader_March(int32 EntryPoint);
}; // Size: 0x191

#endif
