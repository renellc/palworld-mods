#ifndef UE4SS_SDK_BP_ActionSitChair_Player_HPP
#define UE4SS_SDK_BP_ActionSitChair_Player_HPP

class UBP_ActionSitChair_Player_C : public UBP_ActionInteractBase_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0180 (size: 0x8)
    FName Flag Name;                                                                  // 0x0188 (size: 0x8)

    void OnBeginAction();
    void OnEndAction();
    void ExecuteUbergraph_BP_ActionSitChair_Player(int32 EntryPoint);
}; // Size: 0x190

#endif
