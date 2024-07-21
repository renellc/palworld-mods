#ifndef UE4SS_SDK_BP_AIAction_Death_HPP
#define UE4SS_SDK_BP_AIAction_Death_HPP

class UBP_AIAction_Death_C : public UPalAIActionBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0130 (size: 0x8)
    bool IsPlayer;                                                                    // 0x0138 (size: 0x1)
    int32 BoneIndex;                                                                  // 0x013C (size: 0x4)

    bool IsInterruptibleBySleep();
    bool IsInterruptibleByRecoverHungry();
    void GetDeathActionClass(TSubclassOf<class UBP_ActionDeath_C>& DeathAction);
    void ActionStart(class APawn* ControlledPawn);
    void ActionFinished(class APawn* ControlledPawn, TEnumAsByte<EPawnActionResult::Type> WithResult);
    void カスタムイベント_0(class UPalIndividualCharacterParameter* IndividualParameter);
    void ActionResume(class APawn* ControlledPawn);
    void ExecuteUbergraph_BP_AIAction_Death(int32 EntryPoint);
}; // Size: 0x140

#endif
