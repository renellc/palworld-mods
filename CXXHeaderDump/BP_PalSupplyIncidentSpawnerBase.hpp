#ifndef UE4SS_SDK_BP_PalSupplyIncidentSpawnerBase_HPP
#define UE4SS_SDK_BP_PalSupplyIncidentSpawnerBase_HPP

class ABP_PalSupplyIncidentSpawnerBase_C : public ABP_PalRandomIncidentSpawnerTemplate_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0458 (size: 0x8)
    bool bIsPalSpawner;                                                               // 0x0460 (size: 0x1)
    bool bWipedOut;                                                                   // 0x0461 (size: 0x1)

    void ReleaseIncident();
    void WipedOut();
    void ReceiveBeginPlay();
    void OnIncidentSpawned(class UPalIncidentBase* Incident, class UPalIncidentDynamicParameterRandom* DynamicParameter);
    void ExecuteUbergraph_BP_PalSupplyIncidentSpawnerBase(int32 EntryPoint);
}; // Size: 0x462

#endif
