#ifndef UE4SS_SDK_BP_ArenaSequence_Result_HPP
#define UE4SS_SDK_BP_ArenaSequence_Result_HPP

class UBP_ArenaSequence_Result_C : public UPalArenaSequenceBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0040 (size: 0x8)
    TArray<class APalCharacter*> MontagePlayCharacters;                               // 0x0048 (size: 0x10)
    TArray<class APalCharacter*> Inactivated Characters;                              // 0x0058 (size: 0x10)
    FBP_ArenaSequence_Result_COnDraw OnDraw;                                          // 0x0068 (size: 0x10)
    void OnDraw();
    FBP_ArenaSequence_Result_COnWin OnWin;                                            // 0x0078 (size: 0x10)
    void OnWin(FString WinnerName);
    FBP_ArenaSequence_Result_COnCutsceneFinish OnCutsceneFinish;                      // 0x0088 (size: 0x10)
    void OnCutsceneFinish();

    void PlayResultSound();
    void SetDisableLookAtAllPal(bool isDisable);
    void ToggleLocalInput(bool isDisable);
    void InactivateCharacter(class APalCharacter* Character);
    void GetOffAllPlayer();
    void StopMontages();
    void PlayResultMontage(class APalCharacter* Character, class UAnimMontage* AnimMontage);
    void Set Disable Movement(bool isDisable);
    bool IsWinPlayerIndex(EPalArenaPlayerIndex PlayerIndex);
    void SetupFormation();
    void End Process();
    void OnBeginSequence();
    void OnFinishCutscene(bool bIsSkipped);
    void ExecuteUbergraph_BP_ArenaSequence_Result(int32 EntryPoint);
    void OnCutsceneFinish__DelegateSignature();
    void OnWin__DelegateSignature(FString WinnerName);
    void OnDraw__DelegateSignature();
}; // Size: 0x98

#endif
