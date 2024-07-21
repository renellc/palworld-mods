#ifndef UE4SS_SDK_WBP_CharaCre_ScrollBoxContent_Preset_HPP
#define UE4SS_SDK_WBP_CharaCre_ScrollBoxContent_Preset_HPP

class UWBP_CharaCre_ScrollBoxContent_Preset_C : public UWBP_CharaCre_ScrollBoxContentBase_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0428 (size: 0x8)
    class UWrapBox* WrapBox_Preset;                                                   // 0x0430 (size: 0x8)
    FWBP_CharaCre_ScrollBoxContent_Preset_COnSelectedPreset OnSelectedPreset;         // 0x0438 (size: 0x10)
    void OnSelectedPreset(FName PresetName);

    void GetTopFocusTarget(class UWidget*& Widget);
    void GetRestoreFocusTarget(class UWidget*& Widget);
    void ApplyMakeInfo(FPalPlayerDataCharacterMakeInfo MakeInfo);
    void OnClickedPresetButton_Internal(class UWBP_CharaCre_PresetButton_C* Widget);
    void Construct();
    void ExecuteUbergraph_WBP_CharaCre_ScrollBoxContent_Preset(int32 EntryPoint);
    void OnSelectedPreset__DelegateSignature(FName PresetName);
}; // Size: 0x448

#endif
