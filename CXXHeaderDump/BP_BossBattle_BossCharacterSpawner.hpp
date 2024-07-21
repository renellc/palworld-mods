#ifndef UE4SS_SDK_BP_BossBattle_BossCharacterSpawner_HPP
#define UE4SS_SDK_BP_BossBattle_BossCharacterSpawner_HPP

class ABP_BossBattle_BossCharacterSpawner_C : public AActor
{
    class UStaticMeshComponent* StaticMesh;                                           // 0x0290 (size: 0x8)
    class USceneComponent* DefaultSceneRoot;                                          // 0x0298 (size: 0x8)
    class UPalIndividualCharacterHandle* BossCharacterHandle;                         // 0x02A0 (size: 0x8)
    int32 StartPlayerNum;                                                             // 0x02A8 (size: 0x4)
    FBP_BossBattle_BossCharacterSpawner_COnOtherSpawned OnOtherSpawned;               // 0x02B0 (size: 0x10)
    void OnOtherSpawned(class UPalIndividualCharacterHandle* SpawnCharacterHandle);
    TArray<class UPalIndividualCharacterHandle*> OtherCharacterHandles;               // 0x02C0 (size: 0x10)

    void GetDebugNo(int32 BitFlag, bool& Result);
    void SetCharacterStartLocation(class UPalIndividualCharacterHandle* targetHandle, FVector Offset);
    void SetMultiPlayerHPRate(class APalCharacter* SpawnCharacter);
    void SpawnOtherDelegate(FPalInstanceID ID);
    void RequestOtherSpawn(FName CharacterID, int32 Level, TSubclassOf<class APalAIController> AIController, bool IsOutAreaSpawn);
    void SetBossLocationToStartPoint();
    void IsSkipCutscene(bool& Skip);
    void SpawnBossDelegate(FPalInstanceID ID);
    void RequestDespawn();
    void RequestBossSpawn(FName CharacterID, int32 Level);
    void OnOtherSpawned__DelegateSignature(class UPalIndividualCharacterHandle* SpawnCharacterHandle);
}; // Size: 0x2D0

#endif
