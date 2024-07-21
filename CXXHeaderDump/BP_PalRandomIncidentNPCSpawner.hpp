#ifndef UE4SS_SDK_BP_PalRandomIncidentNPCSpawner_HPP
#define UE4SS_SDK_BP_PalRandomIncidentNPCSpawner_HPP

class ABP_PalRandomIncidentNPCSpawner_C : public APalRandomIncidentNPCSpawner
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x03E8 (size: 0x8)
    class USceneComponent* DefaultSceneRoot;                                          // 0x03F0 (size: 0x8)
    double ReturnRadius;                                                              // 0x03F8 (size: 0x8)
    double WalkRadius;                                                                // 0x0400 (size: 0x8)
    TMap<class FName, class FF_NPC_PathWalkArray> WalkPathLists;                      // 0x0408 (size: 0x50)
    TArray<class UPalIndividualCharacterHandle*> IndividualHandleList;                // 0x0458 (size: 0x10)
    TMap<class UPalIndividualCharacterHandle*, class FPalRandomIncidentSpawnMonsterData> MonsterSpawnData; // 0x0468 (size: 0x50)
    TMap<class UPalIndividualCharacterHandle*, class FPalRandomIncidentSpawnNPCData> NPCSpawnData; // 0x04B8 (size: 0x50)
    TMap<class UPalIndividualCharacterHandle*, class FName> PathNames;                // 0x0508 (size: 0x50)
    TMap<class UPalIndividualCharacterHandle*, class FName> RowNames;                 // 0x0558 (size: 0x50)
    FBP_PalRandomIncidentNPCSpawner_CGetWalkPathDelegate GetWalkPathDelegate;         // 0x05A8 (size: 0x10)
    void GetWalkPathDelegate(FName NewParam);
    TMap<class UPalIndividualCharacterHandle*, class FVector> SpawnedLocation;        // 0x05B8 (size: 0x50)
    TMap<class UPalIndividualCharacterHandle*, class FName> OtomoNames;               // 0x0608 (size: 0x50)

    void OnOtomoSpawned(class AController* HolderController, class APalCharacter* OtomoPal);
    void GetGroupNo(class UPalIndividualCharacterHandle* IndividualHandle, int32& GroupNo);
    void GetSpawnedLocation(class UPalIndividualCharacterHandle* Handle, bool& Found, FVector& SpawnedLocation);
    void GetSpawnedCharacters(TArray<class AActor*>& SpawnedCharacters);
    void SetWalkPathList(TMap<class FName, class FF_NPC_PathWalkArray> PathList);
    class APalCharacter* FindCharacterByName(const FName& Name);
    void GetHandleByCharacter(class APalCharacter* Character, class UPalIndividualCharacterHandle*& Handle);
    void Setup Npc Controller(class ABP_NPCAIController_C* NPCController, class APalCharacter* SpawnedChara, FPalInstanceID ID);
    void SetupMonsterController(class ABP_MonsterAIController_Wild_C* Controller, class APalCharacter* SpawnedChara);
    void Setup Spawned Character(FPalInstanceID ID);
    bool IsSpawnedCharacter(const class UPalIndividualCharacterHandle* Handle);
    void GetWalkPath(FName PathName, FF_NPC_PathWalkArray& WalkPathList);
    void Get Path Name(FPalInstanceID ID, FName& PathName);
    void GetDefaultAction(FPalInstanceID ID, TSubclassOf<class UPalActionBase>& DefaultAction, TSubclassOf<class UPalAIActionBase>& DefaultAIAction);
    void IsSquad(FPalInstanceID ID, bool& IsSquad);
    void SpawnCharacter(FName RowName, FName CharacterID, FName UniqueName, FName OtomoName, int32 Level, TSubclassOf<class APalAIController> AIController, FName PathName, FVector Location, double Radius, double RotZ, int32 SpawnPointIndex, int32 SpawnPointCount, class UPalIndividualCharacterHandle*& Handle, FVector& SpawnedLocation);
    void Spawn NPC(FName RowName, FPalRandomIncidentSpawnNPCData SpawnData, int32 SpawnPointIndex, int32 SpawnPointCount);
    void Spawn Monster(FName RowName, FPalRandomIncidentSpawnMonsterData SpawnData, int32 SpawnPointIndex, int32 SpawnPointCount);
    void Get Character(FPalInstanceID ID, class APalCharacter*& Character);
    void FindIndividualHandle(FPalInstanceID ID, class UPalIndividualCharacterHandle*& Handle);
    void RemoveHandle(class UPalIndividualCharacterHandle* Handle);
    void OnCharacterDestroyed(class AActor* DestroyedActor);
    void OnCharacterDespawned(FPalInstanceID ID);
    void Despawn Characters();
    void SpawnMonster(const FName& RowName, const FPalRandomIncidentSpawnMonsterData& SpawnData, int32 SpawnPointIndex, int32 SpawnPointCount);
    void DespawnCharacters();
    void SpawnNPC(const FName& RowName, const FPalRandomIncidentSpawnNPCData& SpawnData, int32 SpawnPointIndex, int32 SpawnPointCount);
    void On Character Spawned (FPalInstanceID ID);
    void カスタムイベント_0(class APalCharacter* InCharacter);
    void ReceiveEndPlay(TEnumAsByte<EEndPlayReason::Type> EndPlayReason);
    void ExecuteUbergraph_BP_PalRandomIncidentNPCSpawner(int32 EntryPoint);
    void GetWalkPathDelegate__DelegateSignature(FName NewParam);
}; // Size: 0x658

#endif
