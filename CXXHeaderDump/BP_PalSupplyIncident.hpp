#ifndef UE4SS_SDK_BP_PalSupplyIncident_HPP
#define UE4SS_SDK_BP_PalSupplyIncident_HPP

class UBP_PalSupplyIncident_C : public UPalRandomIncidentBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0190 (size: 0x8)
    class UPalIncidentDynamicParameterRandom* Parameter;                              // 0x0198 (size: 0x8)
    class UDataTable* SettingDT;                                                      // 0x01A0 (size: 0x8)
    class UPalRandomIncidentActionBase* action;                                       // 0x01A8 (size: 0x8)
    TArray<FName> SpawnedNpcNames;                                                    // 0x01B0 (size: 0x10)
    class ABP_PalRandomIncidentNPCSpawner_C* NPCSpawner;                              // 0x01C0 (size: 0x8)
    bool ExcludedEvenOnce;                                                            // 0x01C8 (size: 0x1)
    bool InsideActionAreaEvenOnce;                                                    // 0x01C9 (size: 0x1)
    TArray<FPalRandomIncidentSpawnMonsterData> OutbreakMonsters;                      // 0x01D0 (size: 0x10)
    TArray<FName> OutbreakMonsterNames;                                               // 0x01E0 (size: 0x10)

    void CheckLive(bool& IsLivePal);
    void ShowErrorNameDuplication(FName InName);
    void SetupOutbreakData();
    void GetGroupList(TArray<int32>& GroupNo);
    void OnRandomIncidentActionNotify(EPalRandomIncidentActionNotifyType NotifyType);
    void SetDisableFlagForNPCSpawner_BP(bool isDisable);
    void OnNPCSpawnerDestroyed(class AActor* DestroyedActor);
    void OnNpcDespawned(const FName& RowName);
    void TerminateAction();
    void OnEndProc();
    class APalRandomIncidentNPCSpawner* GetNPCSpawner();
    void StartAction();
    bool IsExcludeOtherPal();
    void ExcludeOtherPal();
    void OnExitAnyArea_Impl(EPalRandomIncidentSpawnerAreaType AreaType, int32 PlayerId);
    void OnEnterAnyArea_Impl(EPalRandomIncidentSpawnerAreaType AreaType, int32 PlayerId);
    void IsAllNpcSpawned(bool& IsSpawned);
    void OnNpcSpawned(const FName& RowName);
    void Spawn NPCs(class UDataTable* SpawnDataList);
    void Spawn Monsters(class UDataTable* SpawnDataList);
    void Spawn Characters();
    void OnGroupCreated();
    void CreateCharacterIdList(TArray<FName>& CharacterIds);
    void Get Setting Table Row(bool& Result, FPalRandomIncidentSettings& Data);
    void Get Incident Spawner(class APalRandomIncidentSpawnerBase*& IncidentSpawner);
    void CreateAction();
    void CreateNpcSpawner();
    void SetupIncident();
    void OnBegin();
    void BindIDelegate_AreaInOut();
    void UnbindIDelegate_AreaInOut();
    void BindDelegate_NpcSpawner();
    void UnbindDelegate_NpcSpawner();
    void OnEnterAnyAreaEvent(EPalRandomIncidentSpawnerAreaType AreaType, int32 PlayerId);
    void OnExitAnyAreaEvent(EPalRandomIncidentSpawnerAreaType AreaType, int32 PlayerId);
    void OnEnd();
    void BindDelegate_Action();
    void UnbindDelegate_Action();
    void Tick(float DeltaTime);
    void ExecuteUbergraph_BP_PalSupplyIncident(int32 EntryPoint);
}; // Size: 0x1F0

#endif
