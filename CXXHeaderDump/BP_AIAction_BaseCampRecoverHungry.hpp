#ifndef UE4SS_SDK_BP_AIAction_BaseCampRecoverHungry_HPP
#define UE4SS_SDK_BP_AIAction_BaseCampRecoverHungry_HPP

class UBP_AIAction_BaseCampRecoverHungry_C : public UPalAIActionBaseCampRecoverHungry
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0188 (size: 0x8)

    void Change Recover Hungry Action(TSubclassOf<class UPalAIActionBaseCampRecoverHungryChildBase> ChildActionClass);
    void ActionStart(class APawn* ControlledPawn);
    void ChangeActionApproach();
    void ChangeActionEat();
    void NotifyOrderCommand(const EPalMapBaseCampWorkerOrderType OrderType);
    void ActionFinished(class APawn* ControlledPawn, TEnumAsByte<EPawnActionResult::Type> WithResult);
    void ExecuteUbergraph_BP_AIAction_BaseCampRecoverHungry(int32 EntryPoint);
}; // Size: 0x190

#endif
