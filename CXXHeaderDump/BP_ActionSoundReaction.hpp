#ifndef UE4SS_SDK_BP_ActionSoundReaction_HPP
#define UE4SS_SDK_BP_ActionSoundReaction_HPP

class UBP_ActionSoundReaction_C : public UPalActionBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0140 (size: 0x8)

    void OnBeginAction();
    void OnEndAction();
    void ExecuteUbergraph_BP_ActionSoundReaction(int32 EntryPoint);
}; // Size: 0x148

#endif
