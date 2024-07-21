#ifndef UE4SS_SDK_BP_PalIncidentRandomActionBase_HPP
#define UE4SS_SDK_BP_PalIncidentRandomActionBase_HPP

class UBP_PalIncidentRandomActionBase_C : public UPalRandomIncidentActionBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0048 (size: 0x8)

    void GetSpawner(class APalRandomIncidentNPCSpawner*& Spawmer);
    void GetSettingTableRow(bool& Result, FPalRandomIncidentSettings& Data);
    void GetParameter(class UPalIncidentDynamicParameterRandom*& DynamicParameter);
    void GetOwnerIncident(class UBP_PalIncidentRandom_C*& Incident);
    void OnTerminate();
    void ExecuteUbergraph_BP_PalIncidentRandomActionBase(int32 EntryPoint);
}; // Size: 0x50

#endif
