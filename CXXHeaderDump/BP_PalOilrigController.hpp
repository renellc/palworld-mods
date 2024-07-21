#ifndef UE4SS_SDK_BP_PalOilrigController_HPP
#define UE4SS_SDK_BP_PalOilrigController_HPP

class ABP_PalOilrigController_C : public APalOilrigController
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x02F0 (size: 0x8)
    class UStaticMeshComponent* Debug_Mesh;                                           // 0x02F8 (size: 0x8)
    class UBP_OilrigMachineSpawnerComponent_C* BP_OilrigMachineSpawnerComponent;      // 0x0300 (size: 0x8)
    class USceneComponent* DefaultSceneRoot;                                          // 0x0308 (size: 0x8)

    void SoundStop();
    void ReceiveTick(float DeltaSeconds);
    void OnStartCombatToAll_BP();
    void ExecuteUbergraph_BP_PalOilrigController(int32 EntryPoint);
}; // Size: 0x310

#endif
