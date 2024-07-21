#ifndef UE4SS_SDK_BP_PalSpawner_Standard_HPP
#define UE4SS_SDK_BP_PalSpawner_Standard_HPP

class ABP_PalSpawner_Standard_C : public APalNPCSpawnerBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0378 (size: 0x8)
    class UTextRenderComponent* DummyTextRender;                                      // 0x0380 (size: 0x8)
    class USkeletalMeshComponent* DummySkeletalMesh;                                  // 0x0388 (size: 0x8)
    class USphereComponent* SpawnCollision;                                           // 0x0390 (size: 0x8)
    class USceneComponent* DefaultSceneRoot;                                          // 0x0398 (size: 0x8)
    bool NotSleepFlag;                                                                // 0x03A0 (size: 0x1)
    class ABP_MonsterBase_C* tempSpawnedMonster;                                      // 0x03A8 (size: 0x8)
    TArray<class UPalIndividualCharacterHandle*> IndividualHandleList;                // 0x03B0 (size: 0x10)
    double ReturnTerritoryRadius;                                                     // 0x03C0 (size: 0x8)
    double WanderingRadius;                                                           // 0x03C8 (size: 0x8)
    FVector BattleStartLocation;                                                      // 0x03D0 (size: 0x18)
    double SpawnRadius;                                                               // 0x03E8 (size: 0x8)
    TArray<FPalSpawnerGroupInfo> SpawnGroupList;                                      // 0x03F0 (size: 0x10)
    double RayStartUpOffset;                                                          // 0x0400 (size: 0x8)
    FPalSpawnerGroupInfo tempSpawnGroupInfo;                                          // 0x0408 (size: 0x18)
    double WildLifeWalkingAreaRadius;                                                 // 0x0420 (size: 0x8)
    double DespawnPlusDistance;                                                       // 0x0428 (size: 0x8)
    bool IsLoading;                                                                   // 0x0430 (size: 0x1)
    bool IsWorldLoadComplete;                                                         // 0x0431 (size: 0x1)
    FName SpawnerName;                                                                // 0x0434 (size: 0x8)
    EPalSpawnedCharacterType SpawnerType;                                             // 0x043C (size: 0x1)

    EPalSpawnedCharacterType GetSpawnerType();
    FName GetSpawnerName();
    TArray<FPalSpawnerGroupInfo> GetOriginalSpawnGroupList();
    TArray<FPalSpawnerGroupInfo> GetSpawnGroupList(class UObject* WorldContextObject);
    void GetAllSpawnedNPCHandle(TArray<class UPalIndividualCharacterHandle*>& Handles);
    bool IsSuppressedByRandomIncident();
    float GetSpawnPointRadius();
    void BlueprintTick_Despawning(float DeltaTime);
    void BlueprintTick_Spawning(float DeltaTime);
    void Is Field Boss or Imprisonment Boss Spawner(bool& IsTimer);
    void OnDead(FPalDeadInfo Info);
    void OnCaptured(class APalCharacter* SelfPal, class APalCharacter* Attacker);
    void Lottery and Spawn Reauest();
    void ExistAliveCharacter(bool& Exist);
    int32 GetMaxMonsterLevel();
    void IsWorldPartitionLoadComplete(bool& IsLoading);
    void IsCharacterLoading(bool& IsLoading);
    void GetFixedSpawnInfo(FPalSpawnerGroupInfo& Group);
    void CheckIntervalByDistance();
    void BP_PalSpawner_Standard_AutoGenFunc(class AActor* DestroyedActor);
    void CheckWorldLoadCompleted();
    void IsAlwaysSpawn(bool& Always);
    void LotterySpawnPalListIndex(bool& Success, FPalSpawnerGroupInfo& SpawnGroup);
    void RemoveHandleList(class APalCharacter* Monster);
    void FindIndividualHandle(FPalInstanceID ID, class UPalIndividualCharacterHandle*& Handle);
    void DespawnDelegate(FPalInstanceID ID);
    void Spawn Delegate(FPalInstanceID ID);
    void CheckSpawn(double DeltaTime);
    void Despawn();
    void Spawn(FPalSpawnerGroupInfo SpawnGroup);
    void ReceiveBeginPlay();
    void カスタムイベント_0();
    void CreateDebugSpawnerGroupInfo(FPalSpawnerGroupInfo OneGroupInfo);
    void SetAllNPCLocation();
    void ReceiveEndPlay(TEnumAsByte<EEndPlayReason::Type> EndPlayReason);
    void SpawnRequest_ByOutside(bool IsDeleteAliveCharacter);
    void ExecuteUbergraph_BP_PalSpawner_Standard(int32 EntryPoint);
}; // Size: 0x43D

#endif
