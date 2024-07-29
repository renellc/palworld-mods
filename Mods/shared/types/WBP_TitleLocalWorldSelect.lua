---@meta

---@class UWBP_TitleLocalWorldSelect_C : UPalUILocalWorldSelectBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Image_69 UImage
---@field Overlay_Root UOverlay
---@field WBP_Title_WorldMenu_Head UWBP_Title_WorldMenu_Head_C
---@field WBP_Title_WorldSelect UWBP_Title_WorldSelect_C
---@field SelectedWorldSaveDirectoryName FString
---@field ForceFocusTarget UWidget
---@field CachedDisplayInfo TMap<FString, FPalUILocalWorldDisplayData>
---@field ['Selected World Name'] FString
---@field Options FString
UWBP_TitleLocalWorldSelect_C = {}

---@return UWBP_TitleLocalWorldSelect_C
function UWBP_TitleLocalWorldSelect_C:get() end

---@param bResult boolean
function UWBP_TitleLocalWorldSelect_C:WBP_TitleLocalWorldSelect_AutoGenFunc(bResult) end
---@param Param UPalHUDDispatchParameterBase
UWBP_TitleLocalWorldSelect_C['On Closed Delete World Window'] = function(Param) end
---@param Param UPalHUDDispatchParameterBase
UWBP_TitleLocalWorldSelect_C['On Closed World Setting Window'] = function(Param) end
function UWBP_TitleLocalWorldSelect_C:OnCancelAction() end
function UWBP_TitleLocalWorldSelect_C:SetupWorldList() end
---@return UWidget
function UWBP_TitleLocalWorldSelect_C:BP_GetDesiredFocusTarget() end
function UWBP_TitleLocalWorldSelect_C:Construct() end
function UWBP_TitleLocalWorldSelect_C:OnInitialized() end
function UWBP_TitleLocalWorldSelect_C:OnSetup() end
---@param ButtonWidget UWBP_Title_WorldSelect_ListContent_C
function UWBP_TitleLocalWorldSelect_C:BndEvt__WBP_TitleLocalWorldSelect_WBP_Title_WorldSelect_K2Node_ComponentBoundEvent_0_OnClickedWorldButton__DelegateSignature(ButtonWidget) end
---@param ButtonWidget UWBP_Title_WorldSelect_CreateWorld_ListContent_C
function UWBP_TitleLocalWorldSelect_C:BndEvt__WBP_TitleLocalWorldSelect_WBP_Title_WorldSelect_K2Node_ComponentBoundEvent_1_OnClickedNewWorldButton__DelegateSignature(ButtonWidget) end
function UWBP_TitleLocalWorldSelect_C:BndEvt__WBP_TitleLocalWorldSelect_WBP_Title_WorldSelect_K2Node_ComponentBoundEvent_2_OnClickedStartWorldButton__DelegateSignature() end
function UWBP_TitleLocalWorldSelect_C:Destruct() end
function UWBP_TitleLocalWorldSelect_C:BndEvt__WBP_TitleLocalWorldSelect_WBP_Title_WorldSelect_K2Node_ComponentBoundEvent_3_OnClickedWorldSettingButton__DelegateSignature() end
function UWBP_TitleLocalWorldSelect_C:BndEvt__WBP_TitleLocalWorldSelect_WBP_Title_WorldSelect_K2Node_ComponentBoundEvent_4_OnClickedDeleteWorldButton__DelegateSignature() end
---@param bResult boolean
UWBP_TitleLocalWorldSelect_C['カスタムイベント'] = function(bResult) end
---@param SelectedWorldButton UWBP_Title_WorldSelect_ListContent_C
function UWBP_TitleLocalWorldSelect_C:BndEvt__WBP_TitleLocalWorldSelect_WBP_Title_WorldSelect_K2Node_ComponentBoundEvent_5_OnClickedOpenDirectoryButton__DelegateSignature(SelectedWorldButton) end
---@param SelectedWorldButton UWBP_Title_WorldSelect_ListContent_C
function UWBP_TitleLocalWorldSelect_C:BndEvt__WBP_TitleLocalWorldSelect_WBP_Title_WorldSelect_K2Node_ComponentBoundEvent_6_OnClickedSelectBackupButton__DelegateSignature(SelectedWorldButton) end
---@param EntryPoint int32
function UWBP_TitleLocalWorldSelect_C:ExecuteUbergraph_WBP_TitleLocalWorldSelect(EntryPoint) end


