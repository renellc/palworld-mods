#ifndef UE4SS_SDK_BP_PalIncidentInvaderVisitorNPC_HPP
#define UE4SS_SDK_BP_PalIncidentInvaderVisitorNPC_HPP

class UBP_PalIncidentInvaderVisitorNPC_C : public UBP_PalIncidentInvaderBase_C
{

    void IsSquad(bool& Result);
    void Get Chosen Row Data(FPalVisitorNPCDatabaseRow& ChosenRowData);
    void OnAllCharacterSpawned(TArray<class APalAIController*>& MemberController);
    void Get Character Location Type(EPalCharacterLocationType& CharacterLocationType);
    bool GetInvaderStartPoint(FVector& Result);
    void EndProc();
    void StartProc();
}; // Size: 0x281

#endif
