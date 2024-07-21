---@meta

---@class UWBP_OptionSettings_ListContentButton_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field CanvasPanel_Warning UCanvasPanel
---@field Image_Key UImage
---@field WBP_PalKeyGuideIcon UWBP_PalKeyGuideIcon_C
UWBP_OptionSettings_ListContentButton_C = {}

---@param Brush FSlateBrush
function UWBP_OptionSettings_ListContentButton_C:GetCurrentIcon(Brush) end
---@param KeyIcon FSlateBrush
function UWBP_OptionSettings_ListContentButton_C:SetIcon(KeyIcon) end
---@param IsEnable boolean
function UWBP_OptionSettings_ListContentButton_C:EnableWarning(IsEnable) end
---@param InBrush FSlateBrush
---@param ActionName FName
---@param InputType ECommonInputType
function UWBP_OptionSettings_ListContentButton_C:SetUIIcon(InBrush, ActionName, InputType) end
---@param EntryPoint int32
function UWBP_OptionSettings_ListContentButton_C:ExecuteUbergraph_WBP_OptionSettings_ListContentButton(EntryPoint) end


