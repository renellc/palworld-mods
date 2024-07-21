#ifndef UE4SS_SDK_BP_ArenaSequence_PreBattle_HPP
#define UE4SS_SDK_BP_ArenaSequence_PreBattle_HPP

class UBP_ArenaSequence_PreBattle_C : public UPalArenaSequenceBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0040 (size: 0x8)
    FBP_ArenaSequence_PreBattle_CActivateReadyUI ActivateReadyUI;                     // 0x0048 (size: 0x10)
    void ActivateReadyUI();

    void ToggleMutePals(bool DisableCrying);
    void SetDisableLookAtAllPal(bool isDisable);
    void OnCameraTarget(EPalArenaPlayerIndex PlayerIndex);
    void PlayCutscene();
    void FadeOut();
    void RideLeaderPal();
    void SetupStatus();
    void SetupLocalPlayerCamera();
    void ActivatePals();
    void SetupFormation();
    void OnEndSequence();
    void OnFinishCutscene(bool bIsSkipped);
    void OnBeginSequence();
    void ExecuteUbergraph_BP_ArenaSequence_PreBattle(int32 EntryPoint);
    void ActivateReadyUI__DelegateSignature();
}; // Size: 0x58

#endif
