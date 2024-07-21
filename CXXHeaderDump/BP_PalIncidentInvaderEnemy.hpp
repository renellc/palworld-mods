#ifndef UE4SS_SDK_BP_PalIncidentInvaderEnemy_HPP
#define UE4SS_SDK_BP_PalIncidentInvaderEnemy_HPP

class UBP_PalIncidentInvaderEnemy_C : public UBP_PalIncidentInvaderBase_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0288 (size: 0x8)
    double MarchTimer;                                                                // 0x0290 (size: 0x8)
    FPalInvaderDatabaseRow ChosenInvaderData;                                         // 0x0298 (size: 0x70)

    void ReturnToSpawnedPoint();
    void OnAllCharacterSpawned(TArray<class APalAIController*>& MemberController);
    void OnCharacterSpawned(class APalCharacter* SpawnedCharacter);
    void Get Character Location Type(EPalCharacterLocationType& CharacterLocationType);
    bool GetInvaderStartPoint(FVector& Result);
    void EndProc();
    void StartProc();
    void Tick(float DeltaTime);
    void ExecuteUbergraph_BP_PalIncidentInvaderEnemy(int32 EntryPoint);
}; // Size: 0x308

#endif
