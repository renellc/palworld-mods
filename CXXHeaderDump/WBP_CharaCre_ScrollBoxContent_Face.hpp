#ifndef UE4SS_SDK_WBP_CharaCre_ScrollBoxContent_Face_HPP
#define UE4SS_SDK_WBP_CharaCre_ScrollBoxContent_Face_HPP

class UWBP_CharaCre_ScrollBoxContent_Face_C : public UWBP_CharaCre_ScrollBoxContentBase_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0428 (size: 0x8)
    class UWBP_CharaCre_ColorSelect_sq_C* WBP_CharaCre_ColorSelect_sq_Brow;           // 0x0430 (size: 0x8)
    class UWBP_CharaCre_ColorSelect_sq_C* WBP_CharaCre_ColorSelect_sq_Eye;            // 0x0438 (size: 0x8)
    class UWBP_CharaCre_PartsSelectPanel_C* WBP_PartsSelectPanel_Eye;                 // 0x0440 (size: 0x8)
    class UWBP_CharaCre_PartsSelectPanel_C* WBP_PartsSelectPanel_Head;                // 0x0448 (size: 0x8)
    TMap<class FName, class FPalCharacterCreationMeshPresetDataRow> HeadMeshMap;      // 0x0450 (size: 0x50)
    TArray<FLinearColor> BrowColorPreset;                                             // 0x04A0 (size: 0x10)
    TArray<FLinearColor> EyeColorPreset;                                              // 0x04B0 (size: 0x10)
    FWBP_CharaCre_ScrollBoxContent_Face_COnSelectedEyeColor OnSelectedEyeColor;       // 0x04C0 (size: 0x10)
    void OnSelectedEyeColor(FLinearColor Color);
    class UWidget* RestoreFocusWIdget;                                                // 0x04D0 (size: 0x8)
    FWBP_CharaCre_ScrollBoxContent_Face_COnSelectedBrowColor OnSelectedBrowColor;     // 0x04D8 (size: 0x10)
    void OnSelectedBrowColor(FLinearColor Color);

    void OnChangedBrowColor(FLinearColor Color);
    void OnCloseBrowColorSelectWindow(class UPalHUDDispatchParameterBase* Param);
    void OnChangedEyeColor(FLinearColor Color);
    void GetRestoreFocusTarget(class UWidget*& Widget);
    void OnClosedEyeColorSelectWindow(class UPalHUDDispatchParameterBase* Param);
    void ApplyMakeInfo(FPalPlayerDataCharacterMakeInfo MakeInfo);
    void GetTopFocusTarget(class UWidget*& Widget);
    void Construct();
    void BndEvt__WBP_CharaCre_ScrollBoxContent_Face_WBP_CharaCre_ColorSelect_sq_Eye_K2Node_ComponentBoundEvent_0_OnClicked__DelegateSignature(class UWBP_CharaCre_ColorSelect_sq_C* Widget);
    void BndEvt__WBP_CharaCre_ScrollBoxContent_Face_WBP_CharaCre_ColorSelect_sq_Brow_K2Node_ComponentBoundEvent_1_OnClicked__DelegateSignature(class UWBP_CharaCre_ColorSelect_sq_C* Widget);
    void ExecuteUbergraph_WBP_CharaCre_ScrollBoxContent_Face(int32 EntryPoint);
    void OnSelectedBrowColor__DelegateSignature(FLinearColor Color);
    void OnSelectedEyeColor__DelegateSignature(FLinearColor Color);
}; // Size: 0x4E8

#endif
