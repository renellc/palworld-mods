#ifndef UE4SS_SDK_BP_AIActionRiding_HPP
#define UE4SS_SDK_BP_AIActionRiding_HPP

class UBP_AIActionRiding_C : public UPalAIActionBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0130 (size: 0x8)
    class APalCharacter* RidingCharacter;                                             // 0x0138 (size: 0x8)
    FName RidingSpeedUpFlagName;                                                      // 0x0140 (size: 0x8)
    class AActor* OwnerPawn;                                                          // 0x0148 (size: 0x8)
    bool bIsRiding;                                                                   // 0x0150 (size: 0x1)

    void SetRidingCharacter(class APalCharacter* RidingCharacter);
    void ActionStart(class APawn* ControlledPawn);
    void OnCoopReleaseDelegate_イベント_0();
    void ExecuteUbergraph_BP_AIActionRiding(int32 EntryPoint);
}; // Size: 0x151

#endif
