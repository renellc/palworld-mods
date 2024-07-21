#ifndef UE4SS_SDK_BP_AIAction_FriendlyLookat_HPP
#define UE4SS_SDK_BP_AIAction_FriendlyLookat_HPP

class UBP_AIAction_FriendlyLookat_C : public UBP_AIAction_CanCombatBase_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0158 (size: 0x8)
    class AActor* TargetActor;                                                        // 0x0160 (size: 0x8)
    bool IsFinished;                                                                  // 0x0168 (size: 0x1)
    bool CanLookatPal;                                                                // 0x0169 (size: 0x1)
    bool Rotating;                                                                    // 0x016A (size: 0x1)
    bool SingleEffectAble;                                                            // 0x016B (size: 0x1)

    void ActionTick(class APawn* ControlledPawn, float DeltaSeconds);
    void ActionFinished(class APawn* ControlledPawn, TEnumAsByte<EPawnActionResult::Type> WithResult);
    void ActionStart(class APawn* ControlledPawn);
    void ExecuteUbergraph_BP_AIAction_FriendlyLookat(int32 EntryPoint);
}; // Size: 0x16C

#endif
