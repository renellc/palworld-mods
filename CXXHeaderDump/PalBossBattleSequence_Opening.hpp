#ifndef UE4SS_SDK_PalBossBattleSequence_Opening_HPP
#define UE4SS_SDK_PalBossBattleSequence_Opening_HPP

class UPalBossBattleSequence_Opening_C : public UPalBossBattleSequenceBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0040 (size: 0x8)
    int32 LoadingAssetCount;                                                          // 0x0048 (size: 0x4)
    class ULevelSequencePlayer* LSPlayer;                                             // 0x0050 (size: 0x8)
    bool IsEndCutscene;                                                               // 0x0058 (size: 0x1)
    bool IsEndSetBoss;                                                                // 0x0059 (size: 0x1)
    TArray<FTransform> PlayerPosList;                                                 // 0x0060 (size: 0x10)
    bool IsPlayerFix;                                                                 // 0x0070 (size: 0x1)
    class UPalHUDDispatchParameter_FadeWidget* FadeParameter;                         // 0x0078 (size: 0x8)
    bool IsLoaded;                                                                    // 0x0080 (size: 0x1)
    class APalBossBattleLevelInstance* BossRoom;                                      // 0x0088 (size: 0x8)
    class UPalBossBattleInstanceModel* InstanceModel;                                 // 0x0090 (size: 0x8)
    bool IsCutscenePlayed;                                                            // 0x0098 (size: 0x1)
    bool IsTeleportEnd;                                                               // 0x0099 (size: 0x1)
    double LevelLoadCheckTimer;                                                       // 0x00A0 (size: 0x8)
    class UAkAudioEvent* BGMBeginEvent;                                               // 0x00A8 (size: 0x8)
    class UAkAudioEvent* BGMLoopEvent;                                                // 0x00B0 (size: 0x8)
    TSoftObjectPtr<UAkAudioEvent> BGMLoopEventSoft;                                   // 0x00B8 (size: 0x30)
    TSubclassOf<class APalCutsceneActor> PalCustCeneActorClass;                       // 0x00E8 (size: 0x8)
    bool IsPlayIntroBGM;                                                              // 0x00F0 (size: 0x1)
    class UPalBossBattleEventBase* Boss Battle Event;                                 // 0x00F8 (size: 0x8)
    FName flagName;                                                                   // 0x0100 (size: 0x8)

    void IsLoadingAction(bool& IsLoadingAction);
    void TryEventInitialize();
    void IsAssetLoadingCompleted(bool& NewParam);
    void DecAssetLoadingCount();
    void InitPlayerCameraRotation();
    void CheckLevelInstanceLoaded(double DeltaTime);
    void StartUIFadeOut();
    void StartUIFadeIn();
    void GetLevelSpawnPos(FVector& Pos);
    void FixPlayerPos();
    void DoSequenceFinish();
    void IsSkipCutscene(bool& Skip);
    void ActivateBossAI();
    void OnFinishCutscene(bool IsSkipped);
    void PlayIntroMovie(TSubclassOf<class APalCutsceneActor> StartCutscene);
    void SetPlayerLocation_StartPoint();
    void LogShow(FString String);
    void OnLoaded_7D1701CA4A594EE0B85451B16F0DD9FB(class UObject* Loaded);
    void OnLoaded_95B43418450294BEE8289E863350333C(class UObject* Loaded);
    void OnLoaded_87511D084D17A2720B719F91D617DC72(UClass* Loaded);
    void OnBeginSequence();
    void カスタムイベント_0(class APalCharacter* SpawnedCharacter);
    void FinishSequence(bool IsSuccess);
    void TickSequence(float DeltaTime);
    void LoadedLevel();
    void SetupCutscene();
    void OnPlayerTeleported();
    void StartCustcene();
    void OnEventCreated(class UPalBossBattleEventBase* BossBattleEvent);
    void OnActionBegin(const class UPalActionBase* action);
    void OnLoadingActionEnd();
    void ExecuteUbergraph_PalBossBattleSequence_Opening(int32 EntryPoint);
}; // Size: 0x108

#endif
