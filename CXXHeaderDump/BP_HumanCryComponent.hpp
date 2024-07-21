#ifndef UE4SS_SDK_BP_HumanCryComponent_HPP
#define UE4SS_SDK_BP_HumanCryComponent_HPP

class UBP_HumanCryComponent_C : public UPalCryComponentBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x00A0 (size: 0x8)
    class APalCharacter* CryingCharacter;                                             // 0x00A8 (size: 0x8)
    TSubclassOf<class UPalActionBase> CurrentActionClass;                             // 0x00B0 (size: 0x8)

    void PlayCry(class UAkAudioEvent* AkEvent);
    void BP_HumanCryComponent_AutoGenFunc(const class UPalActionBase* action);
    void Initialize();
    void ReceiveBeginPlay();
    void ExecuteUbergraph_BP_HumanCryComponent(int32 EntryPoint);
}; // Size: 0xB8

#endif
