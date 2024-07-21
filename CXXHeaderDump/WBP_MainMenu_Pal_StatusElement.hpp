#ifndef UE4SS_SDK_WBP_MainMenu_Pal_StatusElement_HPP
#define UE4SS_SDK_WBP_MainMenu_Pal_StatusElement_HPP

class UWBP_MainMenu_Pal_StatusElement_C : public UUserWidget
{
    class UImage* Image_Element;                                                      // 0x0278 (size: 0x8)
    class UBP_PalTextBlock_C* Text_ElementTypeName;                                   // 0x0280 (size: 0x8)
    TMap<class EPalElementType, class TSoftObjectPtr<UTexture2D>> TextureMap;         // 0x0288 (size: 0x50)

    void Setup(EPalElementType ElementType);
}; // Size: 0x2D8

#endif
