#ifndef UE4SS_SDK_WBP_CharaCre_ScrollBoxContent_Body_HPP
#define UE4SS_SDK_WBP_CharaCre_ScrollBoxContent_Body_HPP

class UWBP_CharaCre_ScrollBoxContent_Body_C : public UWBP_CharaCre_ScrollBoxContentBase_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0428 (size: 0x8)
    class UWBP_CharaCre_ColorSelect_sq_C* WBP_CharaCre_ColorSelect_sq;                // 0x0430 (size: 0x8)
    class UWBP_Chara_Cre_PartsSizeSlider_C* WBP_PartsSizeSlider_Arm;                  // 0x0438 (size: 0x8)
    class UWBP_Chara_Cre_PartsSizeSlider_C* WBP_PartsSizeSlider_Leg;                  // 0x0440 (size: 0x8)
    class UWBP_Chara_Cre_PartsSizeSlider_C* WBP_PartsSizeSlider_Torso;                // 0x0448 (size: 0x8)
    class UWrapBox* WrapBox_Body;                                                     // 0x0450 (size: 0x8)
    TMap<class FName, class FPalCharacterCreationMeshPresetDataRow> BodyMeshMap;      // 0x0458 (size: 0x50)
    TArray<FLinearColor> PresetColors;                                                // 0x04A8 (size: 0x10)
    FWBP_CharaCre_ScrollBoxContent_Body_COnSelectedSkinColor OnSelectedSkinColor;     // 0x04B8 (size: 0x10)
    void OnSelectedSkinColor(FLinearColor Color);
    class UWidget* RestoreFocusWIdget;                                                // 0x04C8 (size: 0x8)
    FWBP_CharaCre_ScrollBoxContent_Body_COnClickedBodyType OnClickedBodyType;         // 0x04D0 (size: 0x10)
    void OnClickedBodyType(FName PresetName);
    class UWBP_CharaCre_BodyTypeButton_C* LastClickedBodyTypeButton;                  // 0x04E0 (size: 0x8)

    void SetDefaultBodyTypePresetName(FName PresetName);
    void OnClickedBodyTypeButton(class UWBP_CharaCre_BodyTypeButton_C* Widget);
    class UWidget* CustomNavi_ToSkinColor(EUINavigation Navigation);
    class UWidget* CustomNavi_ToTorsoSlider(EUINavigation Navigation);
    void GetRestoreFocusTarget(class UWidget*& Widget);
    void OnChangedSelectColor(FLinearColor Color);
    void OnClosedCOlorSelectWindow(class UPalHUDDispatchParameterBase* Param);
    void ApplyMakeInfo(FPalPlayerDataCharacterMakeInfo MakeInfo);
    void GetTopFocusTarget(class UWidget*& Widget);
    void Construct();
    void BndEvt__WBP_CharaCre_ScrollBoxContent_Body_WBP_CharaCre_ColorSelect_sq_K2Node_ComponentBoundEvent_0_OnClicked__DelegateSignature(class UWBP_CharaCre_ColorSelect_sq_C* Widget);
    void ExecuteUbergraph_WBP_CharaCre_ScrollBoxContent_Body(int32 EntryPoint);
    void OnClickedBodyType__DelegateSignature(FName PresetName);
    void OnSelectedSkinColor__DelegateSignature(FLinearColor Color);
}; // Size: 0x4E8

#endif
