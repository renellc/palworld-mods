---@meta

---@class UBP_PalRichTextDecorator_KeyGuideIcon_C : UPaRichTextDecorator_KeyGuideIcon
---@field CreatedUIInputKeyGuideWidgets TMap<FName, UWidget>
---@field CreatedPlayerInputKeyGuideWidgets TMap<FName, UWidget>
UBP_PalRichTextDecorator_KeyGuideIcon_C = {}

---@return UBP_PalRichTextDecorator_KeyGuideIcon_C
function UBP_PalRichTextDecorator_KeyGuideIcon_C:get() end

---@param KeyGuideActionName FName
---@param IconScale float
---@param OverrideType int32
---@return UWidget
function UBP_PalRichTextDecorator_KeyGuideIcon_C:CreateWidget(KeyGuideActionName, IconScale, OverrideType) end


