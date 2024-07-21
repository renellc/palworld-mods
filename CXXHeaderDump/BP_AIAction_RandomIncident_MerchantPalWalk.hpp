#ifndef UE4SS_SDK_BP_AIAction_RandomIncident_MerchantPalWalk_HPP
#define UE4SS_SDK_BP_AIAction_RandomIncident_MerchantPalWalk_HPP

class UBP_AIAction_RandomIncident_MerchantPalWalk_C : public UPalAIActionBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0130 (size: 0x8)
    FVector GoalPosition;                                                             // 0x0138 (size: 0x18)
    FVector Spawned Position;                                                         // 0x0150 (size: 0x18)

    void ChangeNextMovePosition();
    void ActionStart(class APawn* ControlledPawn);
    void ActionTick(class APawn* ControlledPawn, float DeltaSeconds);
    void ActionFinished(class APawn* ControlledPawn, TEnumAsByte<EPawnActionResult::Type> WithResult);
    void ActionPause(class APawn* ControlledPawn);
    void ExecuteUbergraph_BP_AIAction_RandomIncident_MerchantPalWalk(int32 EntryPoint);
}; // Size: 0x168

#endif
