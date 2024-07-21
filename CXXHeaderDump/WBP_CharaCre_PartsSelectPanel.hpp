#ifndef UE4SS_SDK_WBP_CharaCre_PartsSelectPanel_HPP
#define UE4SS_SDK_WBP_CharaCre_PartsSelectPanel_HPP

class UWBP_CharaCre_PartsSelectPanel_C : public UUserWidget
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0278 (size: 0x8)
    class UWrapBox* WrapBox_Main;                                                     // 0x0280 (size: 0x8)
    FWBP_CharaCre_PartsSelectPanel_COnClickedAnyContent OnClickedAnyContent;          // 0x0288 (size: 0x10)
    void OnClickedAnyContent(FName BindedName);
    TMap<class FName, class UWBP_CharaCre_PartsSelect_sq_C*> ButtonMap;               // 0x0298 (size: 0x50)
    class UWBP_CharaCre_PartsSelect_sq_C* LastClickedButton;                          // 0x02E8 (size: 0x8)

    void SetSelectedPresetName(FName PresetName);
    void OnClicked_Internal(class UWBP_CharaCre_PartsSelect_sq_C* Button);
    void GetTopFocusTarget(class UWidget*& Widget);
    void AddPreset(FName PresetName, TSoftObjectPtr<UTexture2D> SoftIconTexture);
    void AddMeshPresets(TMap<class FName, class FPalCharacterCreationMeshPresetDataRow> PresetMap);
    void Construct();
    void ExecuteUbergraph_WBP_CharaCre_PartsSelectPanel(int32 EntryPoint);
    void OnClickedAnyContent__DelegateSignature(FName BindedName);
}; // Size: 0x2F0

#endif
