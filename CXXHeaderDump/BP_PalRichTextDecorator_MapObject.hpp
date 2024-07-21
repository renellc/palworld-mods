#ifndef UE4SS_SDK_BP_PalRichTextDecorator_MapObject_HPP
#define UE4SS_SDK_BP_PalRichTextDecorator_MapObject_HPP

class UBP_PalRichTextDecorator_MapObject_C : public UPalRichTextDecorator_TagText
{

    FString GetTextStringInternal(const class UObject* WorldContextObject, FName ID);
    FString GetTagName();
}; // Size: 0x28

#endif
