#ifndef UE4SS_SDK_BP_AIAction_WildPalDrinkWater_HPP
#define UE4SS_SDK_BP_AIAction_WildPalDrinkWater_HPP

class UBP_AIAction_WildPalDrinkWater_C : public UBP_AIAction_CanCombatBase_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0158 (size: 0x8)
    FVector GoalPos;                                                                  // 0x0160 (size: 0x18)
    class UPalActionBase* EatAction;                                                  // 0x0178 (size: 0x8)

    void OnFail_3323B09A4DA8EB0F652C87B9DFF6FF56(TEnumAsByte<EPathFollowingResult::Type> MovementResult);
    void OnSuccess_3323B09A4DA8EB0F652C87B9DFF6FF56(TEnumAsByte<EPathFollowingResult::Type> MovementResult);
    void ActionStart(class APawn* ControlledPawn);
    void ActionAbort(class APawn* ControlledPawn);
    void ActionPause(class APawn* ControlledPawn);
    void ActionFinished(class APawn* ControlledPawn, TEnumAsByte<EPawnActionResult::Type> WithResult);
    void ActionResume(class APawn* ControlledPawn);
    void ExecuteUbergraph_BP_AIAction_WildPalDrinkWater(int32 EntryPoint);
}; // Size: 0x180

#endif
