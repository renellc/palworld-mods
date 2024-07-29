---@meta

---@class UBP_PalRichTextDecorator_MapObject_C : UPalRichTextDecorator_TagText
UBP_PalRichTextDecorator_MapObject_C = {}

---@return UBP_PalRichTextDecorator_MapObject_C
function UBP_PalRichTextDecorator_MapObject_C:get() end

---@param WorldContextObject UObject
---@param ID FName
---@return FString
function UBP_PalRichTextDecorator_MapObject_C:GetTextStringInternal(WorldContextObject, ID) end
---@return FString
function UBP_PalRichTextDecorator_MapObject_C:GetTagName() end


