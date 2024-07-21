#ifndef UE4SS_SDK_BP_Action_NPC_SpawnOtomo_HPP
#define UE4SS_SDK_BP_Action_NPC_SpawnOtomo_HPP

class UBP_Action_NPC_SpawnOtomo_C : public UPalActionBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0140 (size: 0x8)

    void RequestSpawnPal(bool& Success);
    void OnNotifyEnd_179C21574A41916954EAF49176A11F1A(FName NotifyName);
    void OnNotifyBegin_179C21574A41916954EAF49176A11F1A(FName NotifyName);
    void OnInterrupted_179C21574A41916954EAF49176A11F1A(FName NotifyName);
    void OnBlendOut_179C21574A41916954EAF49176A11F1A(FName NotifyName);
    void OnCompleted_179C21574A41916954EAF49176A11F1A(FName NotifyName);
    void OnBeginAction();
    void ExecuteUbergraph_BP_Action_NPC_SpawnOtomo(int32 EntryPoint);
}; // Size: 0x148

#endif
