#ifndef UE4SS_SDK_WBP_PlayerInputKeyGuideIcon_HPP
#define UE4SS_SDK_WBP_PlayerInputKeyGuideIcon_HPP

class UWBP_PlayerInputKeyGuideIcon_C : public UPalUIActionWidgetForPlayerInput
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0428 (size: 0x8)
    class UImage* Image_32;                                                           // 0x0430 (size: 0x8)
    class USizeBox* SizeBox_0;                                                        // 0x0438 (size: 0x8)
    TMap<class ECommonInputType, class UTexture2D*> OverrideImage;                    // 0x0440 (size: 0x50)

    void SetOverrideSize(FVector2D Size);
    void Construct();
    void Destruct();
    void UpdateImage(FSlateBrush newBrush);
    void OnInitialized();
    void ExecuteUbergraph_WBP_PlayerInputKeyGuideIcon(int32 EntryPoint);
}; // Size: 0x490

#endif
