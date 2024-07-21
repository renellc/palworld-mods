#ifndef UE4SS_SDK_BP_PalRichTextDecorator_KeyGuideIcon_HPP
#define UE4SS_SDK_BP_PalRichTextDecorator_KeyGuideIcon_HPP

class UBP_PalRichTextDecorator_KeyGuideIcon_C : public UPaRichTextDecorator_KeyGuideIcon
{
    TMap<class FName, class UWidget*> CreatedUIInputKeyGuideWidgets;                  // 0x0028 (size: 0x50)
    TMap<class FName, class UWidget*> CreatedPlayerInputKeyGuideWidgets;              // 0x0078 (size: 0x50)

    class UWidget* CreateWidget(FName KeyGuideActionName, float IconScale, int32 OverrideType);
}; // Size: 0xC8

#endif
