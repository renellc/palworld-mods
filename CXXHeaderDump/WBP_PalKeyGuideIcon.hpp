#ifndef UE4SS_SDK_WBP_PalKeyGuideIcon_HPP
#define UE4SS_SDK_WBP_PalKeyGuideIcon_HPP

class UWBP_PalKeyGuideIcon_C : public UPalUserWidget
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0408 (size: 0x8)
    class UPalUIActionWidgetBase* PalUIActionWidgetBase_24;                           // 0x0410 (size: 0x8)
    class USizeBox* SizeBox_0;                                                        // 0x0418 (size: 0x8)
    FPalDataTableRowName_UIInputAction bindActionName;                                // 0x0420 (size: 0x8)
    TMap<class ECommonInputType, class FSlateBrush> OverrideImageMap;                 // 0x0428 (size: 0x50)
    bool EnableOverrideImage;                                                         // 0x0478 (size: 0x1)

    void OverrideInputType(ECommonInputType InputType);
    void SetOverrideSize(FVector2D Size);
    void OverrideImage();
    void SetInputAction(FName ActionName);
    void Construct();
    void OnInitialized();
    void BndEvt__WBP_PalKeyGuideIcon_PalUIActionWidgetBase_24_K2Node_ComponentBoundEvent_0_OnInputMethodChanged__DelegateSignature(bool bUsingGamepad);
    void UpdateOverrideImage(const FPalKeyConfigSettings& PrevSettings, const FPalKeyConfigSettings& NewSettings);
    void ExecuteUbergraph_WBP_PalKeyGuideIcon(int32 EntryPoint);
}; // Size: 0x479

#endif
