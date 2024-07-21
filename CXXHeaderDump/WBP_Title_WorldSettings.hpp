#ifndef UE4SS_SDK_WBP_Title_WorldSettings_HPP
#define UE4SS_SDK_WBP_Title_WorldSettings_HPP

class UWBP_Title_WorldSettings_C : public UPalUserWidget
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0408 (size: 0x8)
    class UWidgetAnimation* Anm_DefaultToDetail;                                      // 0x0410 (size: 0x8)
    class UCanvasPanel* Canvas_DifficultySetting;                                     // 0x0418 (size: 0x8)
    class UOverlay* Overlay_MultiPlayBlock;                                           // 0x0420 (size: 0x8)
    class UScrollBox* ScrollBox_DifficultySetting;                                    // 0x0428 (size: 0x8)
    class USizeBox* SizeBox_CoopTips;                                                 // 0x0430 (size: 0x8)
    class UBP_PalTextBlock_C* Text_DifficultyDesc;                                    // 0x0438 (size: 0x8)
    class UVerticalBox* VerticalBox_BaseSetting;                                      // 0x0440 (size: 0x8)
    class UVerticalBox* VerticalBox_MultiSetting;                                     // 0x0448 (size: 0x8)
    class UWBP_Title_SettingsButton_C* WBP_Title_SettingsButton_Cancel;               // 0x0450 (size: 0x8)
    class UWBP_Title_SettingsButton_C* WBP_Title_SettingsButton_Confirm;              // 0x0458 (size: 0x8)
    class UWBP_Title_WorldSettingsInfo_C* WBP_Title_WorldSettingsInfo;                // 0x0460 (size: 0x8)
    class UWBP_Title_WorldSettingsInfo_C* WBP_Title_WorldSettingsInfo_1;              // 0x0468 (size: 0x8)
    class UWBP_Title_WorldSettingsInfo_C* WBP_Title_WorldSettingsInfo_2;              // 0x0470 (size: 0x8)
    class UWBP_Title_WorldSettingsInfo_C* WBP_Title_WorldSettingsInfo_3;              // 0x0478 (size: 0x8)
    class UWBP_Title_WorldSettings_ListContent_C* WorldSettings_AutoResetGuildNoOnlinePlayers; // 0x0480 (size: 0x8)
    class UWBP_Title_WorldSettings_ListContent_C* WorldSettings_AutoResetGuildTimeNoOnlinePlayers; // 0x0488 (size: 0x8)
    class UWBP_Title_WorldSettings_ListContent_C* WorldSettings_AutoSaveInterval;     // 0x0490 (size: 0x8)
    class UWBP_Title_WorldSettings_ListContent_C* WorldSettings_BaseCampMaxNumInGuild; // 0x0498 (size: 0x8)
    class UWBP_Title_WorldSettings_ListContent_C* WorldSettings_BaseCampWorkerNum;    // 0x04A0 (size: 0x8)
    class UWBP_Title_WorldSettings_ListContent_C* WorldSettings_BuildObjectDamageRate; // 0x04A8 (size: 0x8)
    class UWBP_Title_WorldSettings_ListContent_C* WorldSettings_BuildObjectDeteriorationRate; // 0x04B0 (size: 0x8)
    class UWBP_Title_WorldSettings_ListContent_C* WorldSettings_CollectionDropRate;   // 0x04B8 (size: 0x8)
    class UWBP_Title_WorldSettings_ListContent_C* WorldSettings_CollectionObjectHpRate; // 0x04C0 (size: 0x8)
    class UWBP_Title_WorldSettings_ListContent_C* WorldSettings_CollectionObjectRespawnSpeedRate; // 0x04C8 (size: 0x8)
    class UWBP_Title_WorldSettings_ListContent_C* WorldSettings_DayTimeSpeedRate;     // 0x04D0 (size: 0x8)
    class UWBP_Title_WorldSettings_ListContent_C* WorldSettings_DeathPenalty;         // 0x04D8 (size: 0x8)
    class UWBP_Title_WorldSettings_ListContent_C* WorldSettings_Difficulty_InnerSetting; // 0x04E0 (size: 0x8)
    class UWBP_Title_WorldSettings_ListContent_C* WorldSettings_DifficultyCustom;     // 0x04E8 (size: 0x8)
    class UWBP_Title_WorldSettings_ListContent_C* WorldSettings_DifficultySetting;    // 0x04F0 (size: 0x8)
    class UWBP_Title_WorldSettings_ListContent_C* WorldSettings_EggHatchingTimeRate;  // 0x04F8 (size: 0x8)
    class UWBP_Title_WorldSettings_ListContent_C* WorldSettings_EnablePoop;           // 0x0500 (size: 0x8)
    class UWBP_Title_WorldSettings_ListContent_C* WorldSettings_EnableRaid;           // 0x0508 (size: 0x8)
    class UWBP_Title_WorldSettings_ListContent_C* WorldSettings_EnemyDropItemRate;    // 0x0510 (size: 0x8)
    class UWBP_Title_WorldSettings_ListContent_C* WorldSettings_ExpRate;              // 0x0518 (size: 0x8)
    class UWBP_Title_WorldSettings_ListContent_C* WorldSettings_GuildPlayerMaxNum;    // 0x0520 (size: 0x8)
    class UWBP_Title_WorldSettings_ListContent_C* WorldSettings_MaxDropItemNum;       // 0x0528 (size: 0x8)
    class UWBP_Title_WorldSettings_ListContent_C* WorldSettings_MaxPoopNum;           // 0x0530 (size: 0x8)
    class UWBP_Title_WorldSettings_ListContent_C* WorldSettings_MultiSetting;         // 0x0538 (size: 0x8)
    class UWBP_Title_WorldSettings_ListContent_C* WorldSettings_NightTimeSpeedRate;   // 0x0540 (size: 0x8)
    class UWBP_Title_WorldSettings_ListContent_C* WorldSettings_PalAutoHPRegeneRate;  // 0x0548 (size: 0x8)
    class UWBP_Title_WorldSettings_ListContent_C* WorldSettings_PalAutoHpRegeneRateInSleep; // 0x0550 (size: 0x8)
    class UWBP_Title_WorldSettings_ListContent_C* WorldSettings_PalCaptureRateAdd;    // 0x0558 (size: 0x8)
    class UWBP_Title_WorldSettings_ListContent_C* WorldSettings_PalDamageRateAttack;  // 0x0560 (size: 0x8)
    class UWBP_Title_WorldSettings_ListContent_C* WorldSettings_PalDamageRateDefense; // 0x0568 (size: 0x8)
    class UWBP_Title_WorldSettings_ListContent_C* WorldSettings_PalSpawnNumRate;      // 0x0570 (size: 0x8)
    class UWBP_Title_WorldSettings_ListContent_C* WorldSettings_PalStaminaDecreaseRate; // 0x0578 (size: 0x8)
    class UWBP_Title_WorldSettings_ListContent_C* WorldSettings_PalStomachDecreaseRate; // 0x0580 (size: 0x8)
    class UWBP_Title_WorldSettings_ListContent_C* WorldSettings_PasswordOnOff;        // 0x0588 (size: 0x8)
    class UWBP_Title_WorldSettings_ListContent_C* WorldSettings_PasswordSetting;      // 0x0590 (size: 0x8)
    class UWBP_Title_WorldSettings_ListContent_C* WorldSettings_PlayerAutoHPRegeneRate; // 0x0598 (size: 0x8)
    class UWBP_Title_WorldSettings_ListContent_C* WorldSettings_PlayerAutoHPRegeneRateInSleep; // 0x05A0 (size: 0x8)
    class UWBP_Title_WorldSettings_ListContent_C* WorldSettings_PlayerDamageRateDefense; // 0x05A8 (size: 0x8)
    class UWBP_Title_WorldSettings_ListContent_C* WorldSettings_PlayerDamagerRateAttack; // 0x05B0 (size: 0x8)
    class UWBP_Title_WorldSettings_ListContent_C* WorldSettings_PlayerStaminaDecreaseRate; // 0x05B8 (size: 0x8)
    class UWBP_Title_WorldSettings_ListContent_C* WorldSettings_PlayerStomachDecreaseRate; // 0x05C0 (size: 0x8)
    class UWBP_Title_WorldSettings_ListContent_C* WorldSettings_Randomizer;           // 0x05C8 (size: 0x8)
    class UWBP_Title_WorldSettings_ListContent_C* WorldSettings_RandomizerSeed;       // 0x05D0 (size: 0x8)
    class UWBP_Title_WorldSettings_ListContent_C* WorldSettings_WorldName;            // 0x05D8 (size: 0x8)
    FWBP_Title_WorldSettings_COnClickedCancel OnClickedCancel;                        // 0x05E0 (size: 0x10)
    void OnClickedCancel();
    FWBP_Title_WorldSettings_COnClickedConfirm OnClickedConfirm;                      // 0x05F0 (size: 0x10)
    void OnClickedConfirm();
    bool IsCustomDifficultySetting;                                                   // 0x0600 (size: 0x1)
    FPalOptionWorldStaticSettings SatticWorldSetting;                                 // 0x0604 (size: 0x100)
    FPalOptionWorldSettings CachedOriginalWorldSetting;                               // 0x0708 (size: 0x158)
    FPalOptionWorldSettings EditedWorldSetting;                                       // 0x0860 (size: 0x158)
    bool IsEditedSettingFlag;                                                         // 0x09B8 (size: 0x1)
    bool IsEditedFromPreset;                                                          // 0x09B9 (size: 0x1)
    bool Is New World;                                                                // 0x09BA (size: 0x1)
    FWBP_Title_WorldSettings_COnClickedWorldNameInputButton OnClickedWorldNameInputButton; // 0x09C0 (size: 0x10)
    void OnClickedWorldNameInputButton();
    FWBP_Title_WorldSettings_COnClickedRandomizerSeedInputButton OnClickedRandomizerSeedInputButton; // 0x09D0 (size: 0x10)
    void OnClickedRandomizerSeedInputButton();

    void ConvertIndexToAutoSaveTime(int32 Index, double& Time);
    void UpdateRandomizerSeedVisibility();
    void GetRandomizerSeed(FString& WorldName);
    void SetRandomizerSeed(FString NewSeed);
    void ConvertAutoSaveTimeToIndex(double Time, int32& Index);
    void CreateAutoSaveSettingStrings(TArray<FString>& OutStrings);
    void ConvertUIIndexToRandomizerMode(int32 UIIndex, EPalRandomizerType& RandomizerType);
    void ConvertRandomizerModeToUIIndex(EPalRandomizerType RandomizerType, int32& UIIndex);
    void CreateRandomizerModeSettingStrings(TArray<FString>& OutStrings);
    void SetWorldName(FString NewWorldName);
    void GetWorldName(FString& WorldName);
    void IsEditedSetting(bool& IsEdited);
    void MarkDirtyWorldSetting();
    void ApplyDifficultyPreset(EPalOptionWorldDifficulty DifficultyType);
    void GetEditedWorldSetting(FPalOptionWorldSettings& WorldSetting);
    void ConvertUIIndexToDeathPenalty(int32 UIIndex, EPalOptionWorldDeathPenalty& DeathPenaltyType);
    void ConvertDeathPenaltyToUIIndex(EPalOptionWorldDeathPenalty DeathPenaltyType, int32& UIIndex);
    void CreateDeathPenaltySettingStrings(TArray<FString>& OutStrings);
    void EndCustomDifficultySetting();
    void IsEditingCustomDifficulty(bool& IsEditing);
    void DisplayDifficultyDesc(EPalOptionWorldDifficulty DifficultyTyper);
    void ConvertUIIndexToDifficulty(int32 UIIndex, EPalOptionWorldDifficulty& DifficultyType);
    void ConvertDifficultyToUIIndex(EPalOptionWorldDifficulty DifficultyType, int32& UIIndex);
    void CreateDifficultySettingStrings(TArray<FString>& OutStrings);
    void CancelTextEdit();
    void IsTextEditing(bool& IsEditing);
    void GetFocusTarget(class UWidget*& TargetWidget);
    void ApplyWorldSettingToUI(FPalOptionWorldSettings WorldSetting);
    void Setup(FPalOptionWorldSettings WorldSetting, bool IsNewWorld, bool CanMulti, FString WorldSaveDirectoryName, FString WorldName);
    void Construct();
    void BndEvt__WBP_Title_WorldSettings_WBP_Title_WorldSettings_ListContent_MultiSetting_K2Node_ComponentBoundEvent_0_OnSwitchChanged__DelegateSignature(bool IsOn);
    void BndEvt__WBP_Title_WorldSettings_WBP_Title_SettingsButton_1_K2Node_ComponentBoundEvent_1_OnClicked__DelegateSignature();
    void BndEvt__WBP_Title_WorldSettings_WBP_Title_SettingsButton_K2Node_ComponentBoundEvent_2_OnClicked__DelegateSignature();
    void BndEvt__WBP_Title_WorldSettings_WBP_Title_WorldSettings_ListContent_PasswordOnOff_K2Node_ComponentBoundEvent_3_OnSwitchChanged__DelegateSignature(bool IsOn);
    void BndEvt__WBP_Title_WorldSettings_WBP_Title_WorldSettings_ListContent_PasswordSetting_K2Node_ComponentBoundEvent_5_OnComittedText__DelegateSignature(FString NewString);
    void BndEvt__WBP_Title_WorldSettings_WBP_Title_WorldSettings_ListContent_DifficultySetting_K2Node_ComponentBoundEvent_6_OnChangedSelectIndex__DelegateSignature(int32 newIndex);
    void BndEvt__WBP_Title_WorldSettings_WBP_Title_WorldSettings_ListContent_DifficultyCustom_K2Node_ComponentBoundEvent_7_OnClickedSettingButton__DelegateSignature();
    void Destruct();
    void BndEvt__WBP_Title_WorldSettings_WorldSettings_Difficulty_InnerSetting_K2Node_ComponentBoundEvent_8_OnChangedSelectIndex__DelegateSignature(int32 newIndex);
    void BndEvt__WBP_Title_WorldSettings_WorldSettings_DayTimeSpeedRate_K2Node_ComponentBoundEvent_9_OnChangedValue__DelegateSignature(double NewValue);
    void BndEvt__WBP_Title_WorldSettings_WorldSettings_NightTimeSpeedRate_K2Node_ComponentBoundEvent_10_OnChangedValue__DelegateSignature(double NewValue);
    void BndEvt__WBP_Title_WorldSettings_WorldSettings_ExpRate_K2Node_ComponentBoundEvent_11_OnChangedValue__DelegateSignature(double NewValue);
    void BndEvt__WBP_Title_WorldSettings_WorldSettings_PalCaptureRateAdd_K2Node_ComponentBoundEvent_12_OnChangedValue__DelegateSignature(double NewValue);
    void BndEvt__WBP_Title_WorldSettings_WorldSettings_PalSpawnNumRate_K2Node_ComponentBoundEvent_13_OnChangedValue__DelegateSignature(double NewValue);
    void BndEvt__WBP_Title_WorldSettings_WorldSettings_PalDamageRateAttack_K2Node_ComponentBoundEvent_14_OnChangedValue__DelegateSignature(double NewValue);
    void BndEvt__WBP_Title_WorldSettings_WorldSettings_PalDamageRateDefense_K2Node_ComponentBoundEvent_15_OnChangedValue__DelegateSignature(double NewValue);
    void BndEvt__WBP_Title_WorldSettings_WorldSettings_PalStomachDecreaseRate_K2Node_ComponentBoundEvent_16_OnChangedValue__DelegateSignature(double NewValue);
    void BndEvt__WBP_Title_WorldSettings_WorldSettings_PalStaminaDecreaseRate_K2Node_ComponentBoundEvent_17_OnChangedValue__DelegateSignature(double NewValue);
    void BndEvt__WBP_Title_WorldSettings_WorldSettings_PalAutoHPRegeneRate_K2Node_ComponentBoundEvent_18_OnChangedValue__DelegateSignature(double NewValue);
    void BndEvt__WBP_Title_WorldSettings_WorldSettings_PalAutoHpRegeneRateInSleep_K2Node_ComponentBoundEvent_19_OnChangedValue__DelegateSignature(double NewValue);
    void BndEvt__WBP_Title_WorldSettings_WorldSettings_PlayerDamagerRateAttack_K2Node_ComponentBoundEvent_20_OnChangedValue__DelegateSignature(double NewValue);
    void BndEvt__WBP_Title_WorldSettings_WorldSettings_PlayerDamageRateDefense_K2Node_ComponentBoundEvent_21_OnChangedValue__DelegateSignature(double NewValue);
    void BndEvt__WBP_Title_WorldSettings_WorldSettings_PlayerStomachDecreaseRate_K2Node_ComponentBoundEvent_22_OnChangedValue__DelegateSignature(double NewValue);
    void BndEvt__WBP_Title_WorldSettings_WorldSettings_PlayerStaminaDecreaseRate_K2Node_ComponentBoundEvent_23_OnChangedValue__DelegateSignature(double NewValue);
    void BndEvt__WBP_Title_WorldSettings_WorldSettings_PlayerAutoHPRegeneRate_K2Node_ComponentBoundEvent_24_OnChangedValue__DelegateSignature(double NewValue);
    void BndEvt__WBP_Title_WorldSettings_WorldSettings_PlayerAutoHPRegeneRateInSleep_K2Node_ComponentBoundEvent_25_OnChangedValue__DelegateSignature(double NewValue);
    void BndEvt__WBP_Title_WorldSettings_WorldSettings_BuildObjectDamageRate_K2Node_ComponentBoundEvent_26_OnChangedValue__DelegateSignature(double NewValue);
    void BndEvt__WBP_Title_WorldSettings_WorldSettings_CollectionDropRate_K2Node_ComponentBoundEvent_27_OnChangedValue__DelegateSignature(double NewValue);
    void BndEvt__WBP_Title_WorldSettings_WorldSettings_CollectionObjectHpRate_K2Node_ComponentBoundEvent_28_OnChangedValue__DelegateSignature(double NewValue);
    void BndEvt__WBP_Title_WorldSettings_WorldSettings_CollectionObjectRespawnSpeedRate_K2Node_ComponentBoundEvent_29_OnChangedValue__DelegateSignature(double NewValue);
    void BndEvt__WBP_Title_WorldSettings_WorldSettings_EnemyDropItemRate_K2Node_ComponentBoundEvent_30_OnChangedValue__DelegateSignature(double NewValue);
    void BndEvt__WBP_Title_WorldSettings_WorldSettings_DeathPenalty_K2Node_ComponentBoundEvent_32_OnChangedSelectIndex__DelegateSignature(int32 newIndex);
    void BndEvt__WBP_Title_WorldSettings_WorldSettings_AutoResetGuildNoOnlinePlayers_K2Node_ComponentBoundEvent_33_OnSwitchChanged__DelegateSignature(bool IsOn);
    void BndEvt__WBP_Title_WorldSettings_WorldSettings_AutoResetGuildTimeNoOnlinePlayers_K2Node_ComponentBoundEvent_34_OnChangedValue__DelegateSignature(double NewValue);
    void BndEvt__WBP_Title_WorldSettings_WorldSettings_AGuildPlayerMaxNum_K2Node_ComponentBoundEvent_35_OnChangedValue__DelegateSignature(double NewValue);
    void TogglePanel(bool IsCustomPanel);
    void BndEvt__WBP_Title_WorldSettings_WorldSettings_WorldName_K2Node_ComponentBoundEvent_31_OnClickedSettingButton__DelegateSignature();
    void BndEvt__WBP_Title_WorldSettings_WorldSettings_EggHatchingTimeRate_K2Node_ComponentBoundEvent_4_OnChangedValue__DelegateSignature(double NewValue);
    void BndEvt__WBP_Title_WorldSettings_WorldSettings_BuildObjectDeteriorationRate_K2Node_ComponentBoundEvent_36_OnChangedValue__DelegateSignature(double NewValue);
    void BndEvt__WBP_Title_WorldSettings_WorldSettings_EnablePoop_K2Node_ComponentBoundEvent_37_OnSwitchChanged__DelegateSignature(bool IsOn);
    void BndEvt__WBP_Title_WorldSettings_WorldSettings_MaxPoopNum_K2Node_ComponentBoundEvent_38_OnChangedValue__DelegateSignature(double NewValue);
    void BndEvt__WBP_Title_WorldSettings_WorldSettings_MaxDropItemNum_K2Node_ComponentBoundEvent_39_OnChangedValue__DelegateSignature(double NewValue);
    void BndEvt__WBP_Title_WorldSettings_WorldSettings_EnableRaid_K2Node_ComponentBoundEvent_40_OnSwitchChanged__DelegateSignature(bool IsOn);
    void BndEvt__WBP_Title_WorldSettings_WorldSettings_BaseCampWorkerNum_K2Node_ComponentBoundEvent_41_OnChangedValue__DelegateSignature(double NewValue);
    void BndEvt__WBP_Title_WorldSettings_WorldSettings_Randomizer_K2Node_ComponentBoundEvent_42_OnChangedSelectIndex__DelegateSignature(int32 newIndex);
    void BndEvt__WBP_Title_WorldSettings_WorldSettings_RandomizerSeed_K2Node_ComponentBoundEvent_43_OnClickedSettingButton__DelegateSignature();
    void BndEvt__WBP_Title_WorldSettings_WorldSettings_BaseCampMaxNumInGuild_K2Node_ComponentBoundEvent_44_OnChangedValue__DelegateSignature(double NewValue);
    void BndEvt__WBP_Title_WorldSettings_WorldSettings_AutoSaveInterval_K2Node_ComponentBoundEvent_46_OnChangedSelectIndex__DelegateSignature(int32 newIndex);
    void ExecuteUbergraph_WBP_Title_WorldSettings(int32 EntryPoint);
    void OnClickedRandomizerSeedInputButton__DelegateSignature();
    void OnClickedWorldNameInputButton__DelegateSignature();
    void OnClickedConfirm__DelegateSignature();
    void OnClickedCancel__DelegateSignature();
}; // Size: 0x9E0

#endif
