#ifndef UE4SS_SDK_BP_ActionProvocation_HPP
#define UE4SS_SDK_BP_ActionProvocation_HPP

class UBP_ActionProvocation_C : public UBP_ActionSimpleMonoMontage_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0168 (size: 0x8)

    void ExecuteUbergraph_BP_ActionProvocation(int32 EntryPoint);
}; // Size: 0x170

#endif
