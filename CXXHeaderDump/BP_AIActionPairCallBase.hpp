#ifndef UE4SS_SDK_BP_AIActionPairCallBase_HPP
#define UE4SS_SDK_BP_AIActionPairCallBase_HPP

class UBP_AIActionPairCallBase_C : public UPalAIActionBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0130 (size: 0x8)
    class AActor* Trainer;                                                            // 0x0138 (size: 0x8)
    bool Petting;                                                                     // 0x0140 (size: 0x1)
    TSubclassOf<class UBP_ActionPairBehaviorBase_C> PairBehaviorActionClass;          // 0x0148 (size: 0x8)

    void OnStartPair();
    void CreatePairBehaviorActionDynamicParameter(FActionDynamicParameter& DynamicParameter);
    void ActionStart(class APawn* ControlledPawn);
    void ActionTick(class APawn* ControlledPawn, float DeltaSeconds);
    void OnFinish();
    void ExecuteUbergraph_BP_AIActionPairCallBase(int32 EntryPoint);
}; // Size: 0x150

#endif
