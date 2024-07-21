#ifndef UE4SS_SDK_BP_PalSupplyIncidentAction_HPP
#define UE4SS_SDK_BP_PalSupplyIncidentAction_HPP

class UBP_PalSupplyIncidentAction_C : public UBP_PalIncidentRandomActionBase_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0050 (size: 0x8)
    bool IsAllNpcSpawned;                                                             // 0x0058 (size: 0x1)

    void GetNPCSpawner(bool bIsPalSpawner, class APalRandomIncidentNPCSpawner*& Result);
    void CollectChangeHateTargets(TArray<class APalCharacter*>& SourceCharacters, TArray<class APalCharacter*>& TargetCharacters);
    void GetSpawner(class APalRandomIncidentNPCSpawner*& Spawmer);
    void ExistsAliveCharacter(bool NPCSpawner, bool& IsAlive);
    void GetSpawnedLocation(class APalAIController* Controller, bool& Found, FVector& Location);
    void GetSpawnRadius(double& Radius);
    void GetSpawnerLocation(FVector& Location);
    void ResetAIController_Monster(class ABP_MonsterAIControllerBase_C* Controller);
    void ResetAIController_NPC(class ABP_NPCAIController_C* Controller);
    void ResetAIController(bool NPCSpawner);
    void Set Hate To Targets(class APalCharacter* Character, TArray<class APalCharacter*>& Targets);
    void SetHate();
    void OnAllNpcSpawned();
    void OnInitialized();
    void OnStart();
    void OnTerminate();
    void OnTick(float DeltaTime);
    void ExecuteUbergraph_BP_PalSupplyIncidentAction(int32 EntryPoint);
}; // Size: 0x59

#endif
