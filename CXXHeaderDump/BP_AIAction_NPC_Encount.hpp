#ifndef UE4SS_SDK_BP_AIAction_NPC_Encount_HPP
#define UE4SS_SDK_BP_AIAction_NPC_Encount_HPP

class UBP_AIAction_NPC_Encount_C : public UPalAIActionBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0130 (size: 0x8)
    class AActor* TrgetActor;                                                         // 0x0138 (size: 0x8)
    bool Propagation;                                                                 // 0x0140 (size: 0x1)
    class UPalShooterComponent* Shooter;                                              // 0x0148 (size: 0x8)
    class UBP_OtomoPalHolderComponent_C* OtomoHolder;                                 // 0x0150 (size: 0x8)

    void GetShooter(class UPalShooterComponent*& ShooterComponent);
    void ActionStart(class APawn* ControlledPawn);
    void OnWeaponChanged(class APalWeaponBase* Weapon);
    void StartCombat();
    void ExecuteUbergraph_BP_AIAction_NPC_Encount(int32 EntryPoint);
}; // Size: 0x158

#endif
