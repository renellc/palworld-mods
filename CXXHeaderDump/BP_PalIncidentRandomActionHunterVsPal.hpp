#ifndef UE4SS_SDK_BP_PalIncidentRandomActionHunterVsPal_HPP
#define UE4SS_SDK_BP_PalIncidentRandomActionHunterVsPal_HPP

class UBP_PalIncidentRandomActionHunterVsPal_C : public UBP_PalIncidentRandomActionBase_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0050 (size: 0x8)
    int32 WinnerGroup;                                                                // 0x0058 (size: 0x4)
    bool IsAllNpcSpawned;                                                             // 0x005C (size: 0x1)

    void ExistsAliveCharacter(TArray<class APalCharacter*>& Array, bool& NewParam);
    void GetSpawnedLocation(class APalAIController* Controller, bool& Found, FVector& Location);
    void GetSpawnRadius(double& Radius);
    void GetSpawnerLocation(FVector& Location);
    void ResetAIController_Monster(class ABP_MonsterAIControllerBase_C* Controller);
    void ResetAIController_NPC(class ABP_NPCAIController_C* Controller);
    void ResetAIController(int32 GroupId);
    void GetWinnerGroup(int32& GroupId);
    void Set Hate To Targets(class APalCharacter* Character, TArray<class APalCharacter*>& Targets);
    void CollectCharactersByGroup(int32 Group, TArray<class APalCharacter*>& MatchCharacters, TArray<class APalCharacter*>& UnmatchCharacters);
    void CollectGroupIds(TArray<int32>& GroupIds);
    void SetHate();
    void OnAllNpcSpawned();
    void OnInitialized();
    void OnStart();
    void OnTerminate();
    void OnTick(float DeltaTime);
    void ExecuteUbergraph_BP_PalIncidentRandomActionHunterVsPal(int32 EntryPoint);
}; // Size: 0x5D

#endif
