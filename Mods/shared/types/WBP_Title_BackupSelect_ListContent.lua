---@meta

---@class UWBP_Title_BackupSelect_ListContent_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Anm_Select UWidgetAnimation
---@field Anm_NormalToFocus UWidgetAnimation
---@field CanvasPanel_1 UCanvasPanel
---@field Text_BackupName UBP_PalTextBlock_C
---@field WBP_PalInvisibleButton UWBP_PalInvisibleButton_C
---@field OnClicked FWBP_Title_BackupSelect_ListContent_COnClicked
---@field BindedSaveDirectoryName FString
---@field CachedServerDisplayData FPalUIServerDisplayData
---@field ['World Name'] FString
---@field CachedDisplayData FPalUIBackupSaveDisplayData
UWBP_Title_BackupSelect_ListContent_C = {}

---@param DisplayData FPalUIBackupSaveDisplayData
function UWBP_Title_BackupSelect_ListContent_C:GetDisplayData(DisplayData) end
---@param DisplayData FPalUIBackupSaveDisplayData
function UWBP_Title_BackupSelect_ListContent_C:Setup(DisplayData) end
function UWBP_Title_BackupSelect_ListContent_C:AnmEvent_Unselect() end
---@param Button UCommonButtonBase
function UWBP_Title_BackupSelect_ListContent_C:BndEvt__WBP_Title_WorldSelect_ListContent_WBP_PalInvisibleButton_K2Node_ComponentBoundEvent_0_CommonButtonBaseClicked__DelegateSignature(Button) end
---@param Button UCommonButtonBase
function UWBP_Title_BackupSelect_ListContent_C:BndEvt__WBP_Title_WorldSelect_ListContent_WBP_PalInvisibleButton_K2Node_ComponentBoundEvent_1_CommonButtonBaseClicked__DelegateSignature(Button) end
---@param Button UCommonButtonBase
function UWBP_Title_BackupSelect_ListContent_C:BndEvt__WBP_Title_WorldSelect_ListContent_WBP_PalInvisibleButton_K2Node_ComponentBoundEvent_2_CommonButtonBaseClicked__DelegateSignature(Button) end
---@param EntryPoint int32
function UWBP_Title_BackupSelect_ListContent_C:ExecuteUbergraph_WBP_Title_BackupSelect_ListContent(EntryPoint) end
---@param Widget UWBP_Title_BackupSelect_ListContent_C
function UWBP_Title_BackupSelect_ListContent_C:OnClicked__DelegateSignature(Widget) end


