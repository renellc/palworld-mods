#ifndef UE4SS_SDK_WBP_CharaCre_HPP
#define UE4SS_SDK_WBP_CharaCre_HPP

class UWBP_CharaCre_C : public UUserWidget
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0278 (size: 0x8)
    class UWidgetAnimation* Anm_PlayerNameEdit_OffToOn;                               // 0x0280 (size: 0x8)
    class UCanvasPanel* Canvas_PlayerName;                                            // 0x0288 (size: 0x8)
    class UImage* Image_85;                                                           // 0x0290 (size: 0x8)
    class USizeBox* SizeBox_CancelInGame;                                             // 0x0298 (size: 0x8)
    class USizeBox* SizeBox_ExitInGame;                                               // 0x02A0 (size: 0x8)
    class USizeBox* SizeBox_ExitNewGame;                                              // 0x02A8 (size: 0x8)
    class UBP_PalTextBlock_C* Text_PlayerName;                                        // 0x02B0 (size: 0x8)
    class UWBP_CharaCre_MenuButton_C* WBP_CharaCre_MenuButton_Body;                   // 0x02B8 (size: 0x8)
    class UWBP_CharaCre_MenuButton_C* WBP_CharaCre_MenuButton_Cancel_InGame;          // 0x02C0 (size: 0x8)
    class UWBP_CharaCre_MenuButton_C* WBP_CharaCre_MenuButton_Finish;                 // 0x02C8 (size: 0x8)
    class UWBP_CharaCre_MenuButton_C* WBP_CharaCre_MenuButton_Finish_InGame;          // 0x02D0 (size: 0x8)
    class UWBP_CharaCre_MenuButton_C* WBP_CharaCre_MenuButton_Hair;                   // 0x02D8 (size: 0x8)
    class UWBP_CharaCre_MenuButton_C* WBP_CharaCre_MenuButton_Head;                   // 0x02E0 (size: 0x8)
    class UWBP_CharaCre_MenuButton_C* WBP_CharaCre_MenuButton_Preset;                 // 0x02E8 (size: 0x8)
    class UWBP_CharaCre_MenuButton_C* WBP_CharaCre_MenuButton_Voice;                  // 0x02F0 (size: 0x8)
    class UWBP_CommonButton_C* WBP_CommonButton_65;                                   // 0x02F8 (size: 0x8)
    class UWBP_PalCommonScrollList_C* WBP_PalCommonScrollList_Setting;                // 0x0300 (size: 0x8)
    FWBP_CharaCre_COnChangedTab OnChangedTab;                                         // 0x0308 (size: 0x10)
    void OnChangedTab(class UWBP_CharaCre_Tab_C* TabWidget);
    class UWBP_CharaCre_ScrollBoxContentSet_C* ScrollBoxContentSet;                   // 0x0318 (size: 0x8)
    FWBP_CharaCre_COnLeftRotationButtonClicked OnLeftRotationButtonClicked;           // 0x0320 (size: 0x10)
    void OnLeftRotationButtonClicked();
    FWBP_CharaCre_COnRightRotationButtonClicked OnRightRotationButtonClicked;         // 0x0330 (size: 0x10)
    void OnRightRotationButtonClicked();
    FWBP_CharaCre_COnChangedSkinColor OnChangedSkinColor;                             // 0x0340 (size: 0x10)
    void OnChangedSkinColor(FLinearColor Color);
    FWBP_CharaCre_COnChangedTorsoSize OnChangedTorsoSize;                             // 0x0350 (size: 0x10)
    void OnChangedTorsoSize(double Size);
    FWBP_CharaCre_COnChangedLegSize OnChangedLegSize;                                 // 0x0360 (size: 0x10)
    void OnChangedLegSize(double Size);
    FWBP_CharaCre_COnChangedArmSize OnChangedArmSize;                                 // 0x0370 (size: 0x10)
    void OnChangedArmSize(double Size);
    FWBP_CharaCre_COnChangedEyeColor OnChangedEyeColor;                               // 0x0380 (size: 0x10)
    void OnChangedEyeColor(FLinearColor Color);
    FWBP_CharaCre_COnChangedBrowColor OnChangedBrowColor;                             // 0x0390 (size: 0x10)
    void OnChangedBrowColor(FLinearColor Color);
    FWBP_CharaCre_COnChangedHairColor OnChangedHairColor;                             // 0x03A0 (size: 0x10)
    void OnChangedHairColor(FLinearColor Color);
    FWBP_CharaCre_COnSelectedBodyMesh OnSelectedBodyMesh;                             // 0x03B0 (size: 0x10)
    void OnSelectedBodyMesh(FName MeshPresetRowName);
    FWBP_CharaCre_COnSelecteddHeadMesh OnSelecteddHeadMesh;                           // 0x03C0 (size: 0x10)
    void OnSelecteddHeadMesh(FName MeshPresetRowName);
    FWBP_CharaCre_COnSelectedHairMesh OnSelectedHairMesh;                             // 0x03D0 (size: 0x10)
    void OnSelectedHairMesh(FName MeshPresetRowName);
    FWBP_CharaCre_COnClickedCategoryButton OnClickedCategoryButton;                   // 0x03E0 (size: 0x10)
    void OnClickedCategoryButton(TEnumAsByte<E_UICharacterMakeCategory::Type> CategoryType);
    class UWBP_CharaCre_MenuButton_C* LastClickedButton;                              // 0x03F0 (size: 0x8)
    FWBP_CharaCre_COnNotifyOpenSelectColorWindow OnNotifyOpenSelectColorWindow;       // 0x03F8 (size: 0x10)
    void OnNotifyOpenSelectColorWindow();
    FWBP_CharaCre_COnNotifyCloseSelectColorWIndow OnNotifyCloseSelectColorWIndow;     // 0x0408 (size: 0x10)
    void OnNotifyCloseSelectColorWIndow();
    FWBP_CharaCre_COnClickedEditNameButton OnClickedEditNameButton;                   // 0x0418 (size: 0x10)
    void OnClickedEditNameButton();
    FWBP_CharaCre_COnSelectedEyeMaterial OnSelectedEyeMaterial;                       // 0x0428 (size: 0x10)
    void OnSelectedEyeMaterial(FName EyeMaterialName);
    FWBP_CharaCre_COnClickedCompleteButton OnClickedCompleteButton;                   // 0x0438 (size: 0x10)
    void OnClickedCompleteButton();
    FWBP_CharaCre_COnSelectedPreset OnSelectedPreset;                                 // 0x0448 (size: 0x10)
    void OnSelectedPreset(FName PresetName);
    FWBP_CharaCre_COnChangedVoiceID OnChangedVoiceID;                                 // 0x0458 (size: 0x10)
    void OnChangedVoiceID(int32 VoiceID);
    FWBP_CharaCre_COnClickedInGameCompleteButton OnClickedInGameCompleteButton;       // 0x0468 (size: 0x10)
    void OnClickedInGameCompleteButton();

    void SetIsNewGame(bool IsNewGame);
    void RequestPlaySampleVoice(int32 VoiceID);
    void OnSelectedVoiceID_Internal(int32 VoiceID);
    void OnSelectedPreset_Internal(FName PresetName);
    class UWidget* CustomNavi_ToCategoryTop(EUINavigation Navigation);
    void GetSelectedEyeHSV(FLinearColor& HSV);
    void OnSelectedEyeMaterial_Internal(FName BindedName);
    void SetEnableNameEdit(bool IsEnable);
    void SetPlayerName(FText NewName);
    void OnNotifyClosenSelectColorWindow_Internal();
    void OnNotifyOpenSelectColorWindow_Internal();
    class UWidget* CustomNavi_ToNameChange(EUINavigation Navigation);
    void SetEnableSettingScrollList(bool IsEnable);
    void GetCategoryButtonByCategory(TEnumAsByte<E_UICharacterMakeCategory::Type> CategoryType, class UWBP_CharaCre_MenuButton_C*& Button);
    void OnClickedCategoryButton_Internal(class UWBP_CharaCre_MenuButton_C* Button);
    void GetRestoreFocusTarget(TEnumAsByte<E_UICharacterMakeCategory::Type> CategoryType, class UWidget*& Widget);
    void OnClickedHairMesh_Internal(FName BindedName);
    void OnClickedHeadMesh_Internal(FName BindedName);
    void OnClickedBodyMesh_Internal(FName BindedName);
    void OnChangedHairColor_Internal(FLinearColor Color);
    void OnChangedBrowColor_Internal(FLinearColor Color);
    void OnChangedEyeColor_Internal(FLinearColor Color);
    void OnChangedArmSizeInternal(double Value);
    void OnChangedLegSize_Internal(double Value);
    void OnChangedTorsoSize_Internal(double Value);
    void GetTopFocusTarget(TEnumAsByte<E_UICharacterMakeCategory::Type> NewCategory, class UWidget*& Widget);
    void OnChangedArmSize_Internal(float Value);
    void ApplyMakeInfo(FPalPlayerDataCharacterMakeInfo MakeInfo);
    void ChangeMakeCategory(TEnumAsByte<E_UICharacterMakeCategory::Type> NewCategory);
    void Setup();
    void OnChangedSkinColor_Internal(FLinearColor Color);
    void OnChangedTab_Internal(int32 OldIndex, int32 newIndex, class UWidget* FocusTargetWidget);
    void AnmEvent_NoRotation();
    void Construct();
    void OnInitialized();
    void BndEvt__WBP_CharaCre_WBP_CharaCre_MenuButton_K2Node_ComponentBoundEvent_6_OnClicked__DelegateSignature(class UWBP_CharaCre_MenuButton_C* Button);
    void BndEvt__WBP_CharaCre_WBP_CharaCre_MenuButton_1_K2Node_ComponentBoundEvent_7_OnClicked__DelegateSignature(class UWBP_CharaCre_MenuButton_C* Button);
    void BndEvt__WBP_CharaCre_WBP_CharaCre_MenuButton_2_K2Node_ComponentBoundEvent_8_OnClicked__DelegateSignature(class UWBP_CharaCre_MenuButton_C* Button);
    void BndEvt__WBP_CharaCre_WBP_CommonButton_65_K2Node_ComponentBoundEvent_0_OnClicked__DelegateSignature();
    void BndEvt__WBP_CharaCre_WBP_CharaCre_MenuButton_Finish_K2Node_ComponentBoundEvent_1_OnClicked__DelegateSignature(class UWBP_CharaCre_MenuButton_C* Button);
    void BndEvt__WBP_CharaCre_WBP_CharaCre_MenuButton_Preset_K2Node_ComponentBoundEvent_2_OnClicked__DelegateSignature(class UWBP_CharaCre_MenuButton_C* Button);
    void BndEvt__WBP_CharaCre_WBP_CharaCre_MenuButton_Voice_K2Node_ComponentBoundEvent_3_OnClicked__DelegateSignature(class UWBP_CharaCre_MenuButton_C* Button);
    void BndEvt__WBP_CharaCre_WBP_CharaCre_MenuButton_Finish_InGame_K2Node_ComponentBoundEvent_4_OnClicked__DelegateSignature(class UWBP_CharaCre_MenuButton_C* Button);
    void BndEvt__WBP_CharaCre_WBP_CharaCre_MenuButton_Cancel_InGame_K2Node_ComponentBoundEvent_5_OnClicked__DelegateSignature(class UWBP_CharaCre_MenuButton_C* Button);
    void Destruct();
    void ExecuteUbergraph_WBP_CharaCre(int32 EntryPoint);
    void OnClickedInGameCompleteButton__DelegateSignature();
    void OnChangedVoiceID__DelegateSignature(int32 VoiceID);
    void OnSelectedPreset__DelegateSignature(FName PresetName);
    void OnClickedCompleteButton__DelegateSignature();
    void OnSelectedEyeMaterial__DelegateSignature(FName EyeMaterialName);
    void OnClickedEditNameButton__DelegateSignature();
    void OnNotifyCloseSelectColorWIndow__DelegateSignature();
    void OnNotifyOpenSelectColorWindow__DelegateSignature();
    void OnClickedCategoryButton__DelegateSignature(TEnumAsByte<E_UICharacterMakeCategory::Type> CategoryType);
    void OnSelectedHairMesh__DelegateSignature(FName MeshPresetRowName);
    void OnSelecteddHeadMesh__DelegateSignature(FName MeshPresetRowName);
    void OnSelectedBodyMesh__DelegateSignature(FName MeshPresetRowName);
    void OnChangedHairColor__DelegateSignature(FLinearColor Color);
    void OnChangedBrowColor__DelegateSignature(FLinearColor Color);
    void OnChangedEyeColor__DelegateSignature(FLinearColor Color);
    void OnChangedArmSize__DelegateSignature(double Size);
    void OnChangedLegSize__DelegateSignature(double Size);
    void OnChangedTorsoSize__DelegateSignature(double Size);
    void OnChangedSkinColor__DelegateSignature(FLinearColor Color);
    void OnRightRotationButtonClicked__DelegateSignature();
    void OnLeftRotationButtonClicked__DelegateSignature();
    void OnChangedTab__DelegateSignature(class UWBP_CharaCre_Tab_C* TabWidget);
}; // Size: 0x478

#endif
