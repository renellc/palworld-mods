---@meta

---@class UWBP_PalActionBarContent_C : UPalCommonBoundActionButton
---@field UberGraphFrame FPointerToUberGraphFrame
---@field HorizontalBox_32 UHorizontalBox
UWBP_PalActionBarContent_C = {}

---@return UWBP_PalActionBarContent_C
function UWBP_PalActionBarContent_C:get() end

function UWBP_PalActionBarContent_C:OnUpdateInputAction() end
---@param EntryPoint int32
function UWBP_PalActionBarContent_C:ExecuteUbergraph_WBP_PalActionBarContent(EntryPoint) end


