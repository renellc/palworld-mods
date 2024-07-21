#ifndef UE4SS_SDK_BP_LevelInstance_BossRoomBase_HPP
#define UE4SS_SDK_BP_LevelInstance_BossRoomBase_HPP

class ABP_LevelInstance_BossRoomBase_C : public APalBossBattleLevelInstance
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0338 (size: 0x8)
    class UBoxComponent* TowerBox8;                                                   // 0x0340 (size: 0x8)
    class UBoxComponent* TowerBox7;                                                   // 0x0348 (size: 0x8)
    class UBoxComponent* TowerBox6;                                                   // 0x0350 (size: 0x8)
    class UBoxComponent* TowerBox5;                                                   // 0x0358 (size: 0x8)
    class UBoxComponent* TowerBox4;                                                   // 0x0360 (size: 0x8)
    class UBoxComponent* TowerBox3;                                                   // 0x0368 (size: 0x8)
    class UBoxComponent* TowerBox2;                                                   // 0x0370 (size: 0x8)
    class UBoxComponent* TowerBox1;                                                   // 0x0378 (size: 0x8)
    class UBoxComponent* ForNavMesh_Ground;                                           // 0x0380 (size: 0x8)
    class UBoxComponent* EdgeBox3;                                                    // 0x0388 (size: 0x8)
    class UBoxComponent* EdgeBox2;                                                    // 0x0390 (size: 0x8)
    class UBoxComponent* EdgeBox1;                                                    // 0x0398 (size: 0x8)
    class UBoxComponent* EdgeBox;                                                     // 0x03A0 (size: 0x8)
    class USceneComponent* GroundCheckPoint;                                          // 0x03A8 (size: 0x8)
    class UBoxComponent* WallBox4;                                                    // 0x03B0 (size: 0x8)
    class UBoxComponent* WallBox3;                                                    // 0x03B8 (size: 0x8)
    class UBoxComponent* WallBox2;                                                    // 0x03C0 (size: 0x8)
    class UBoxComponent* WallBox1;                                                    // 0x03C8 (size: 0x8)
    class UBoxComponent* CeilingBox;                                                  // 0x03D0 (size: 0x8)
    class UStaticMeshComponent* SequencerTransform;                                   // 0x03D8 (size: 0x8)
    class UStaticMeshComponent* SM_EnemyPoint;                                        // 0x03E0 (size: 0x8)
    class UStaticMeshComponent* PlayerStartPoint;                                     // 0x03E8 (size: 0x8)
    class ABP_BossBattle_BossCharacterSpawner_C* BossSpawner;                         // 0x03F0 (size: 0x8)
    FBP_LevelInstance_BossRoomBase_COnSetBoss OnSetBoss;                              // 0x03F8 (size: 0x10)
    void OnSetBoss(class APalCharacter* Boss);
    FBP_LevelInstance_BossRoomBase_COnLoadedLevel OnLoadedLevel;                      // 0x0408 (size: 0x10)
    void OnLoadedLevel();
    bool IsLoaded;                                                                    // 0x0418 (size: 0x1)

    void GetBossSpawner(class ABP_BossBattle_BossCharacterSpawner_C*& BossSpawner);
    FTransform GetSequencerTransform();
    bool CheckLevelLoaded();
    FTransform GetPlayerStartTransform();
    void Spawn Boss Spawner_Internal(EPalBossType Boss, int32 JoinPlayerNum);
    void Set Spawn Boss Character(class APalCharacter* Boss);
    void ReceiveEndPlay(TEnumAsByte<EEndPlayReason::Type> EndPlayReason);
    void ReceiveBeginPlay();
    void ReceiveTick(float DeltaSeconds);
    void ResetBossLocation();
    void SpawnBossSpawner(EPalBossType BossType, int32 JoinPlayerNum);
    void ExecuteUbergraph_BP_LevelInstance_BossRoomBase(int32 EntryPoint);
    void OnLoadedLevel__DelegateSignature();
    void OnSetBoss__DelegateSignature(class APalCharacter* Boss);
}; // Size: 0x419

#endif
