#ifndef UE4SS_SDK_BP_PalIncidentRandomActionMerchantwithPAL_HPP
#define UE4SS_SDK_BP_PalIncidentRandomActionMerchantwithPAL_HPP

class UBP_PalIncidentRandomActionMerchantwithPAL_C : public UBP_PalIncidentRandomActionBase_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0050 (size: 0x8)
    TArray<class APalNPC*> SpawnNPCList;                                              // 0x0058 (size: 0x10)
    TArray<class APalMonsterCharacter*> SpawnMonsterList;                             // 0x0068 (size: 0x10)
    bool IsBinding;                                                                   // 0x0078 (size: 0x1)

    void OnDamage(FPalDamageResult DamageResult);
    void CollectSpawnCharacter();
    void UnbindOnDamage();
    void BindOnDamage();
    void OnAllNpcSpawned();
    void OnTerminate();
    void ExecuteUbergraph_BP_PalIncidentRandomActionMerchantwithPAL(int32 EntryPoint);
}; // Size: 0x79

#endif
