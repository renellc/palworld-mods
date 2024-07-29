---@meta

---@class UWBP_LoadingScreen_C : UPalLoadingScreenWidgetBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Default_In UWidgetAnimation
---@field CanvasPanel_0 UCanvasPanel
---@field Image_0 UImage
---@field Image_50 UImage
---@field WBP_Common_LoadingIcon UWBP_Common_LoadingIcon_C
UWBP_LoadingScreen_C = {}

---@return UWBP_LoadingScreen_C
function UWBP_LoadingScreen_C:get() end

---@param Color FLinearColor
function UWBP_LoadingScreen_C:SetBgColor(Color) end
function UWBP_LoadingScreen_C:Construct() end
---@param Visiable boolean
function UWBP_LoadingScreen_C:ToggleVisibility(Visiable) end
---@param EntryPoint int32
function UWBP_LoadingScreen_C:ExecuteUbergraph_WBP_LoadingScreen(EntryPoint) end


