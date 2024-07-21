#ifndef UE4SS_SDK_BP_ActionEncount_HPP
#define UE4SS_SDK_BP_ActionEncount_HPP

class UBP_ActionEncount_C : public UBP_ActionSimpleMonoMontage_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0168 (size: 0x8)
    class UPalFacialComponent* PalFacial;                                             // 0x0170 (size: 0x8)

    void OnBeginAction();
    void OnEndAction();
    void ExecuteUbergraph_BP_ActionEncount(int32 EntryPoint);
}; // Size: 0x178

#endif
