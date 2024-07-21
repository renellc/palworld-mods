#ifndef UE4SS_SDK_BP_PalIncidentInvaderBase_HPP
#define UE4SS_SDK_BP_PalIncidentInvaderBase_HPP

class UBP_PalIncidentInvaderBase_C : public UPalInvaderIncidentBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0220 (size: 0x8)
    TArray<class UPalIndividualCharacterHandle*> IndividualHandleList;                // 0x0228 (size: 0x10)
    FVector MarchStartPoint;                                                          // 0x0238 (size: 0x18)
    int32 MemberCount;                                                                // 0x0250 (size: 0x4)
    int32 SpawnedCount;                                                               // 0x0254 (size: 0x4)
    class ABP_DummyNavigationInvoker_C* DummyNav_Start;                               // 0x0258 (size: 0x8)
    class ABP_DummyNavigationInvoker_C* DummyNav_Goal;                                // 0x0260 (size: 0x8)
    FVector CashedBaseCampLocation;                                                   // 0x0268 (size: 0x18)
    bool IsBaseCampLocationCashed;                                                    // 0x0280 (size: 0x1)

    void IsSquad(bool& Result);
    void GetStartLocation(FVector& StartLocation);
    void OnAllCharacterSpawned(TArray<class APalAIController*>& MemberController);
    void OnCharacterSpawned(class APalCharacter* SpawnedCharacter);
    void Get Character Location Type(EPalCharacterLocationType& CharacterLocationType);
    void SpawnMemberCharacters(FVector StartLocation);
    void GetTargetBaseCampPosition(FVector& Location);
    void TerminateProc();
    void EndProc();
    void StartProc();
    void SpawnDummyNavInvoker(class ABP_DummyNavigationInvoker_C*& DummyNav);
    void DummyActorSetLoaction();
    void OnDestroyActor(class AActor* Actor);
    void GoalPointPerAgent(int32 SpawnedIndex, FVector& GoalPosition);
    void RemoveHandleList(class APalCharacter* Character);
    void FindIndividualHandle(FPalInstanceID ID, class UPalIndividualCharacterHandle*& Handle);
    void SpawnDelegate(FPalInstanceID ID);
    void RandomTransform(int32 Index, FVector& RandomPos);
    void OnEndInvade();
    void OnInitialized();
    void OnStartInvade();
    void ExecuteUbergraph_BP_PalIncidentInvaderBase(int32 EntryPoint);
}; // Size: 0x281

#endif
