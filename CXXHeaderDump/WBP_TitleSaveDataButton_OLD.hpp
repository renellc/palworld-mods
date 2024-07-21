#ifndef UE4SS_SDK_WBP_TitleSaveDataButton_OLD_HPP
#define UE4SS_SDK_WBP_TitleSaveDataButton_OLD_HPP

class UWBP_TitleSaveDataButton_OLD_C : public UUserWidget
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0278 (size: 0x8)
    class UBP_PalTextBlock_C* BP_PalTextBlock_C_304;                                  // 0x0280 (size: 0x8)
    class UImage* Image_23;                                                           // 0x0288 (size: 0x8)
    class UWBP_PalCommonButton_C* WBP_PalCommonButton;                                // 0x0290 (size: 0x8)
    FWBP_TitleSaveDataButton_OLD_COnClickedSaveDataButton OnClickedSaveDataButton;    // 0x0298 (size: 0x10)
    void OnClickedSaveDataButton(FString WorldSaveDirectoryName);
    FString WorldSaveDirectoryName;                                                   // 0x02A8 (size: 0x10)
    FPalWorldBaseInfoSaveData WorldBaseInfo;                                          // 0x02B8 (size: 0x28)

    void Construct();
    void BndEvt__WBP_TitleFriendButton_WBP_PalCommonButton_K2Node_ComponentBoundEvent_0_CommonButtonBaseClicked__DelegateSignature(class UCommonButtonBase* Button);
    void ExecuteUbergraph_WBP_TitleSaveDataButton_OLD(int32 EntryPoint);
    void OnClickedSaveDataButton__DelegateSignature(FString WorldSaveDirectoryName);
}; // Size: 0x2E0

#endif
