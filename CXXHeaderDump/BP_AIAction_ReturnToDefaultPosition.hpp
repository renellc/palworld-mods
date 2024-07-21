#ifndef UE4SS_SDK_BP_AIAction_ReturnToDefaultPosition_HPP
#define UE4SS_SDK_BP_AIAction_ReturnToDefaultPosition_HPP

class UBP_AIAction_ReturnToDefaultPosition_C : public UPalAIActionBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0130 (size: 0x8)
    FVector GoalPos;                                                                  // 0x0138 (size: 0x18)
    double MoveEndRange;                                                              // 0x0150 (size: 0x8)

    void Setup(FVector DefaultPos, double MoveEndDistance);
    void ActionTick(class APawn* ControlledPawn, float DeltaSeconds);
    void ExecuteUbergraph_BP_AIAction_ReturnToDefaultPosition(int32 EntryPoint);
}; // Size: 0x158

#endif
