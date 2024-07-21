#ifndef UE4SS_SDK_WBP_Graphic_Settings_HPP
#define UE4SS_SDK_WBP_Graphic_Settings_HPP

class UWBP_Graphic_Settings_C : public UUserWidget
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0278 (size: 0x8)
    class UBP_PalTextBlock_C* BP_PalTextBlock_C;                                      // 0x0280 (size: 0x8)
    class UWBP_OptionSettings_ListContent_C* WBP_OptionSettings_AA;                   // 0x0288 (size: 0x8)
    class UWBP_OptionSettings_ListContent_C* WBP_OptionSettings_AutoContrast;         // 0x0290 (size: 0x8)
    class UWBP_OptionSettings_ListContent_C* WBP_OptionSettings_Brightness;           // 0x0298 (size: 0x8)
    class UWBP_OptionSettings_ListContent_C* WBP_OptionSettings_CameraRecoil;         // 0x02A0 (size: 0x8)
    class UWBP_OptionSettings_ListContent_C* WBP_OptionSettings_CameraShake;          // 0x02A8 (size: 0x8)
    class UWBP_OptionSettings_ListContent_C* WBP_OptionSettings_DLSS;                 // 0x02B0 (size: 0x8)
    class UWBP_OptionSettings_ListContent_C* WBP_OptionSettings_DrawDistance;         // 0x02B8 (size: 0x8)
    class UWBP_OptionSettings_ListContent_C* WBP_OptionSettings_DrawGrass;            // 0x02C0 (size: 0x8)
    class UWBP_OptionSettings_ListContent_C* WBP_OptionSettings_EffectQuality;        // 0x02C8 (size: 0x8)
    class UWBP_OptionSettings_ListContent_C* WBP_OptionSettings_FOV;                  // 0x02D0 (size: 0x8)
    class UWBP_OptionSettings_ListContent_C* WBP_OptionSettings_LODBias;              // 0x02D8 (size: 0x8)
    class UWBP_OptionSettings_ListContent_C* WBP_OptionSettings_MaxFPS;               // 0x02E0 (size: 0x8)
    class UWBP_OptionSettings_ListContent_C* WBP_OptionSettings_MotionBlur;           // 0x02E8 (size: 0x8)
    class UWBP_OptionSettings_ListContent_C* WBP_OptionSettings_Preset;               // 0x02F0 (size: 0x8)
    class UWBP_OptionSettings_ListContent_C* WBP_OptionSettings_Resolution;           // 0x02F8 (size: 0x8)
    class UWBP_OptionSettings_ListContent_C* WBP_OptionSettings_RideCameraLength;     // 0x0300 (size: 0x8)
    class UWBP_OptionSettings_ListContent_C* WBP_OptionSettings_Screen;               // 0x0308 (size: 0x8)
    class UWBP_OptionSettings_ListContent_C* WBP_OptionSettings_Shadow;               // 0x0310 (size: 0x8)
    class UWBP_OptionSettings_ListContent_C* WBP_OptionSettings_TextureQuality;       // 0x0318 (size: 0x8)
    class UWBP_OptionSettings_ListContent_C* WBP_OptionSettings_VSync;                // 0x0320 (size: 0x8)
    FPalOptionGraphicsSettings Graphics Settings Cache;                               // 0x0328 (size: 0x58)
    FPalOptionLocalStaticSettings LocalStaticSettingCache;                            // 0x0380 (size: 0x58)
    TArray<FDataTableRowHandle> ScreenSettingMsgIds;                                  // 0x03D8 (size: 0x10)
    TArray<FDataTableRowHandle> LevelMsgIds;                                          // 0x03E8 (size: 0x10)
    TArray<FDataTableRowHandle> LevelMsgIds_Graphic;                                  // 0x03F8 (size: 0x10)
    bool SomethingChanged;                                                            // 0x0408 (size: 0x1)
    TMap<int32, TEnumAsByte<EAntiAliasingMethod>> AAMap;                              // 0x0410 (size: 0x50)
    TArray<FString> AASettings;                                                       // 0x0460 (size: 0x10)
    TMap<int32, FString> FPSSelection;                                                // 0x0470 (size: 0x50)
    FDataTableRowHandle NoLimitlMsgId;                                                // 0x04C0 (size: 0x10)
    TArray<FIntPoint> SupportResolutions;                                             // 0x04D0 (size: 0x10)
    TArray<FDataTableRowHandle> DLSSLevelMsgIds;                                      // 0x04E0 (size: 0x10)
    TMap<int32, UDLSSMode> DLSSMap;                                                   // 0x04F0 (size: 0x50)

    void GetDisplayGraphicLevel(FPalOptionGraphicsSettings GraphicLevel, EPalOptionGraphicsLevel& Graphicsレベル);
    void Construct();
    void OnPresetChanged(int32 Selection);
    void OnWindowChanged(int32 Selection);
    void OnResolutionChanged(int32 Selection);
    void OnVSyncChanged(bool IsOn);
    void OnMotionBlurChanged(bool IsOn);
    void OnAAChanged(int32 Selection);
    void OnCameraShakeChanged(bool IsOn);
    void OnCameraRecoilChanged(bool IsOn);
    void OnFOVChanged(double Value);
    void OnLODChanged(double Value);
    void OnViewDisChanged(int32 Selection);
    void OnFoliageChanged(int32 Selection);
    void OnShadowChanged(int32 Selection);
    void OnBrightnessChanged(double Value);
    void OnAutoContrastChanged(bool IsOn);
    void OnTextureChanged(int32 Selection);
    void ApplySettings();
    void SetDefault();
    void OnRideCameraChanged(double Value);
    void OnDLSSChanged(int32 DLSSLevel);
    void OnMaxFPSChanged(int32 Selection);
    void OnCommonQualityChanged(int32 Selection);
    void ExecuteUbergraph_WBP_Graphic_Settings(int32 EntryPoint);
}; // Size: 0x540

#endif
