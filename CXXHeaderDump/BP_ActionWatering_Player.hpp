#ifndef UE4SS_SDK_BP_ActionWatering_Player_HPP
#define UE4SS_SDK_BP_ActionWatering_Player_HPP

class UBP_ActionWatering_Player_C : public UBP_ActionInteractBase_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0180 (size: 0x8)
    FName flagName;                                                                   // 0x0188 (size: 0x8)

    void OnBeginAction();
    void OnEndAction();
    void ExecuteUbergraph_BP_ActionWatering_Player(int32 EntryPoint);
}; // Size: 0x190

#endif
