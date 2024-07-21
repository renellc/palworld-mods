#ifndef UE4SS_SDK_BP_ActionEscapeStart_HPP
#define UE4SS_SDK_BP_ActionEscapeStart_HPP

class UBP_ActionEscapeStart_C : public UBP_ActionSimpleMonoMontage_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0168 (size: 0x8)
    class UPalFacialComponent* PalFacial;                                             // 0x0170 (size: 0x8)
    bool UseMontageFacial;                                                            // 0x0178 (size: 0x1)

    void OnBeginAction();
    void OnEndAction();
    void ExecuteUbergraph_BP_ActionEscapeStart(int32 EntryPoint);
}; // Size: 0x179

#endif
