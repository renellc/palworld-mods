#ifndef UE4SS_SDK_BP_HomingMissile_MissileLauncher_HPP
#define UE4SS_SDK_BP_HomingMissile_MissileLauncher_HPP

class ABP_HomingMissile_MissileLauncher_C : public ABP_HomingMissile_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x03A8 (size: 0x8)
    class UStaticMeshComponent* SM_MissileExhaust1;                                   // 0x03B0 (size: 0x8)
    double RocketSpeed;                                                               // 0x03B8 (size: 0x8)
    float RocketStartDelay;                                                           // 0x03C0 (size: 0x4)

    void Find Target Actor(class APalCharacter*& PalCharacter);
    void ReceiveBeginPlay();
    void ExecuteUbergraph_BP_HomingMissile_MissileLauncher(int32 EntryPoint);
}; // Size: 0x3C4

#endif
