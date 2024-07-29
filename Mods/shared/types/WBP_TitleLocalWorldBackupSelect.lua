---@meta

---@class UWBP_TitleLocalWorldBackupSelect_C : UPalUIWorldBackupSelect
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Image_69 UImage
---@field Overlay_Root UOverlay
---@field WBP_Title_BackupSelect UWBP_Title_BackupSelect_C
---@field WBP_Title_WorldMenu_Head UWBP_Title_WorldMenu_Head_C
---@field LastClickedButton UWBP_Title_BackupSelect_ListContent_C
---@field CheckDialogMsgID FDataTableRowHandle
---@field SuccessDialogMsgID FDataTableRowHandle
---@field FailedDialogMsgID FDataTableRowHandle
UWBP_TitleLocalWorldBackupSelect_C = {}

---@return UWBP_TitleLocalWorldBackupSelect_C
function UWBP_TitleLocalWorldBackupSelect_C:get() end

---@param bResult boolean
function UWBP_TitleLocalWorldBackupSelect_C:OnCloseSuccessDialog(bResult) end
---@param bResult boolean
function UWBP_TitleLocalWorldBackupSelect_C:OnCloseFailedDialog(bResult) end
---@param bResult boolean
function UWBP_TitleLocalWorldBackupSelect_C:OnClosedCheckDialog(bResult) end
function UWBP_TitleLocalWorldBackupSelect_C:OpenFailedDialog() end
function UWBP_TitleLocalWorldBackupSelect_C:OpenSuccessDialog() end
function UWBP_TitleLocalWorldBackupSelect_C:OpenCheckDialog() end
---@param Widget UWidget
UWBP_TitleLocalWorldBackupSelect_C['Get Focus Target Internal'] = function(Widget) end
---@return UWidget
function UWBP_TitleLocalWorldBackupSelect_C:BP_GetDesiredFocusTarget() end
function UWBP_TitleLocalWorldBackupSelect_C:Setup() end
function UWBP_TitleLocalWorldBackupSelect_C:OnSetup() end
function UWBP_TitleLocalWorldBackupSelect_C:BndEvt__WBP_TitleLocalWorldBackupSelect_WBP_Title_BackupSelect_K2Node_ComponentBoundEvent_0_OnClickedCloseButton__DelegateSignature() end
---@param Widget UWBP_Title_BackupSelect_ListContent_C
function UWBP_TitleLocalWorldBackupSelect_C:BndEvt__WBP_TitleLocalWorldBackupSelect_WBP_Title_BackupSelect_K2Node_ComponentBoundEvent_1_OnClickedBackup__DelegateSignature(Widget) end
function UWBP_TitleLocalWorldBackupSelect_C:Destruct() end
---@param EntryPoint int32
function UWBP_TitleLocalWorldBackupSelect_C:ExecuteUbergraph_WBP_TitleLocalWorldBackupSelect(EntryPoint) end


