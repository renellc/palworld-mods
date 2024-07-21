#ifndef UE4SS_SDK_BP_AIAction_NPCSpawnOtomo_HPP
#define UE4SS_SDK_BP_AIAction_NPCSpawnOtomo_HPP

class UBP_AIAction_NPCSpawnOtomo_C : public UPalAIActionBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0130 (size: 0x8)
    class AActor* TargetActor;                                                        // 0x0138 (size: 0x8)
    bool IsRutnMode;                                                                  // 0x0140 (size: 0x1)

    void ActionStart(class APawn* ControlledPawn);
    void ActionTick(class APawn* ControlledPawn, float DeltaSeconds);
    void ExecuteUbergraph_BP_AIAction_NPCSpawnOtomo(int32 EntryPoint);
}; // Size: 0x141

#endif
