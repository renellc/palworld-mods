#ifndef UE4SS_SDK_BP_OilrigMachineSpawnerComponent_HPP
#define UE4SS_SDK_BP_OilrigMachineSpawnerComponent_HPP

class UBP_OilrigMachineSpawnerComponent_C : public UPalOilrigMachineSpawnerComponent
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x00E8 (size: 0x8)
    class UPalIndividualCharacterHandle* Handle;                                      // 0x00F0 (size: 0x8)

    void Destroy by Dead();
    void On Dead(FPalDeadInfo DeadInfo);
    void Despawn Delegate(FPalInstanceID ID);
    void Spawn Delegate(FPalInstanceID ID);
    void DespawnMecha();
    void SpawnMecha(FVector Location, FRotator Rotate);
    void SpawnMachine(FVector Location, FRotator Rotate);
    void DespawnMachine();
    void ExecuteUbergraph_BP_OilrigMachineSpawnerComponent(int32 EntryPoint);
}; // Size: 0xF8

#endif
