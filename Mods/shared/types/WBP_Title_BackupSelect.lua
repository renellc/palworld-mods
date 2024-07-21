---@meta

---@class UWBP_Title_BackupSelect_C : UPalUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Text_BackupInfo UBP_PalTextBlock_C
---@field Text_NothingBackup UBP_PalTextBlock_C
---@field WBP_Menu_btn UWBP_Menu_btn_C
---@field WBP_PalCommonScrollList UWBP_PalCommonScrollList_C
---@field OnClickedCloseButton FWBP_Title_BackupSelect_COnClickedCloseButton
---@field OnClickedBackup FWBP_Title_BackupSelect_COnClickedBackup
UWBP_Title_BackupSelect_C = {}

---@param Navigation EUINavigation
---@return UWidget
function UWBP_Title_BackupSelect_C:CustomNavi_ToListTop(Navigation) end
---@param Navigation EUINavigation
---@return UWidget
function UWBP_Title_BackupSelect_C:CustomNavi_ToCloseButton(Navigation) end
---@param TargetWidget UWidget
function UWBP_Title_BackupSelect_C:GetTopFocusTarget(TargetWidget) end
---@param Widget UWBP_Title_BackupSelect_ListContent_C
function UWBP_Title_BackupSelect_C:OnClickedBackupButton_Internal(Widget) end
---@param DisplayData TArray<FPalUIBackupSaveDisplayData>
function UWBP_Title_BackupSelect_C:SetBackupDisplayData(DisplayData) end
function UWBP_Title_BackupSelect_C:BndEvt__WBP_Title_BackupSelect_WBP_Menu_btn_K2Node_ComponentBoundEvent_0_OnButtonClicked__DelegateSignature() end
function UWBP_Title_BackupSelect_C:Destruct() end
---@param EntryPoint int32
function UWBP_Title_BackupSelect_C:ExecuteUbergraph_WBP_Title_BackupSelect(EntryPoint) end
---@param Widget UWBP_Title_BackupSelect_ListContent_C
function UWBP_Title_BackupSelect_C:OnClickedBackup__DelegateSignature(Widget) end
function UWBP_Title_BackupSelect_C:OnClickedCloseButton__DelegateSignature() end


