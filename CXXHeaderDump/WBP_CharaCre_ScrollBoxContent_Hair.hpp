#ifndef UE4SS_SDK_WBP_CharaCre_ScrollBoxContent_Hair_HPP
#define UE4SS_SDK_WBP_CharaCre_ScrollBoxContent_Hair_HPP

class UWBP_CharaCre_ScrollBoxContent_Hair_C : public UWBP_CharaCre_ScrollBoxContentBase_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0428 (size: 0x8)
    class UWBP_CharaCre_ColorSelect_sq_C* WBP_CharaCre_ColorSelect_sq_Hair;           // 0x0430 (size: 0x8)
    class UWBP_CharaCre_PartsSelectPanel_C* WBP_MeshSelectPanel_Hair;                 // 0x0438 (size: 0x8)
    TMap<class FName, class FPalCharacterCreationMeshPresetDataRow> HairMeshMap;      // 0x0440 (size: 0x50)
    TArray<FLinearColor> HairColorPreset;                                             // 0x0490 (size: 0x10)
    FWBP_CharaCre_ScrollBoxContent_Hair_COnSelectedHairColor OnSelectedHairColor;     // 0x04A0 (size: 0x10)
    void OnSelectedHairColor(FLinearColor HSV);
    class UWidget* RestoreFocusWIdget;                                                // 0x04B0 (size: 0x8)

    void OnChangedHairColor(FLinearColor Color);
    void GetRestoreFocusTarget(class UWidget*& Widget);
    void OnClosedHairColorSelectWindow(class UPalHUDDispatchParameterBase* Param);
    void ApplyMakeInfo(FPalPlayerDataCharacterMakeInfo MakeInfo);
    void GetTopFocusTarget(class UWidget*& Widget);
    void Construct();
    void BndEvt__WBP_CharaCre_ScrollBoxContent_Hair_WBP_CharaCre_ColorSelect_sq_Hair_K2Node_ComponentBoundEvent_0_OnClicked__DelegateSignature(class UWBP_CharaCre_ColorSelect_sq_C* Widget);
    void ExecuteUbergraph_WBP_CharaCre_ScrollBoxContent_Hair(int32 EntryPoint);
    void OnSelectedHairColor__DelegateSignature(FLinearColor HSV);
}; // Size: 0x4B8

#endif
