#ifndef UE4SS_SDK_BP_Status_IvyCling_HPP
#define UE4SS_SDK_BP_Status_IvyCling_HPP

class UBP_Status_IvyCling_C : public UBP_Status_WithVisualEffect_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0060 (size: 0x8)

    void OnBeginStatus();
    void OnEndStatus();
    void ExecuteUbergraph_BP_Status_IvyCling(int32 EntryPoint);
}; // Size: 0x68

#endif
