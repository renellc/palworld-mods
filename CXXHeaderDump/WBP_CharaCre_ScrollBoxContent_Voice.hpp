#ifndef UE4SS_SDK_WBP_CharaCre_ScrollBoxContent_Voice_HPP
#define UE4SS_SDK_WBP_CharaCre_ScrollBoxContent_Voice_HPP

class UWBP_CharaCre_ScrollBoxContent_Voice_C : public UWBP_CharaCre_ScrollBoxContentBase_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0428 (size: 0x8)
    class UWrapBox* WrapBox_Body;                                                     // 0x0430 (size: 0x8)
    FWBP_CharaCre_ScrollBoxContent_Voice_COnChangedVoiceID OnChangedVoiceID;          // 0x0438 (size: 0x10)
    void OnChangedVoiceID(int32 VoiceID);
    TArray<class UAkAudioEvent*> SampleVoiceArray;                                    // 0x0448 (size: 0x10)
    TMap<int32, int32> PlayVoiceMap;                                                  // 0x0458 (size: 0x50)
    int32 VoiceCount;                                                                 // 0x04A8 (size: 0x4)
    TArray<class UWBP_CharaCre_BodyTypeButton_C*> VoiceButtons;                       // 0x04B0 (size: 0x10)
    class UWBP_CharaCre_BodyTypeButton_C* LastClickedVoiceTypeButton;                 // 0x04C0 (size: 0x8)

    void OnClickedVoiceTypeButton(class UWBP_CharaCre_BodyTypeButton_C* Widget);
    void Play Sample Voice(int32 VoiceID);
    void ApplyMakeInfo(FPalPlayerDataCharacterMakeInfo MakeInfo);
    void GetRestoreFocusTarget(class UWidget*& Widget);
    void GetTopFocusTarget(class UWidget*& Widget);
    void Construct();
    void ExecuteUbergraph_WBP_CharaCre_ScrollBoxContent_Voice(int32 EntryPoint);
    void OnChangedVoiceID__DelegateSignature(int32 VoiceID);
}; // Size: 0x4C8

#endif
