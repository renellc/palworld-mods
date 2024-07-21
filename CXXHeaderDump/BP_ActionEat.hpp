#ifndef UE4SS_SDK_BP_ActionEat_HPP
#define UE4SS_SDK_BP_ActionEat_HPP

class UBP_ActionEat_C : public UBP_ActionSimpleMonoMontage_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0168 (size: 0x8)

    void OnBeginAction();
    void OnEndAction();
    void ExecuteUbergraph_BP_ActionEat(int32 EntryPoint);
}; // Size: 0x170

#endif
