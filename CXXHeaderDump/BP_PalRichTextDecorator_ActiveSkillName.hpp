#ifndef UE4SS_SDK_BP_PalRichTextDecorator_ActiveSkillName_HPP
#define UE4SS_SDK_BP_PalRichTextDecorator_ActiveSkillName_HPP

class UBP_PalRichTextDecorator_ActiveSkillName_C : public UPalRichTextDecorator_TagText
{

    FString GetTextStringInternal(const class UObject* WorldContextObject, FName ID);
    FString GetTagName();
}; // Size: 0x28

#endif
