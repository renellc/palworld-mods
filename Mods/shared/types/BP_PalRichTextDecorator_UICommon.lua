---@meta

---@class UBP_PalRichTextDecorator_UICommon_C : UPalRichTextDecorator_TagText
UBP_PalRichTextDecorator_UICommon_C = {}

---@return UBP_PalRichTextDecorator_UICommon_C
function UBP_PalRichTextDecorator_UICommon_C:get() end

---@param WorldContextObject UObject
---@param ID FName
---@return FString
function UBP_PalRichTextDecorator_UICommon_C:GetTextStringInternal(WorldContextObject, ID) end
---@return FString
function UBP_PalRichTextDecorator_UICommon_C:GetTagName() end


