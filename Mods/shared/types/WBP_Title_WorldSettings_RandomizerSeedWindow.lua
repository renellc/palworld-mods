---@meta

---@class UWBP_Title_WorldSettings_RandomizerSeedWindow_C : UPalUserWidgetOverlayUI
---@field UberGraphFrame FPointerToUberGraphFrame
---@field EditableTextBox_Name UEditableTextBox
---@field Image_57 UImage
---@field WBP_CommonButton UWBP_CommonButton_C
---@field WBP_PalCommonWindow UWBP_PalCommonWindow_C
---@field ['Default Input Name'] FString
UWBP_Title_WorldSettings_RandomizerSeedWindow_C = {}

---@return UWBP_Title_WorldSettings_RandomizerSeedWindow_C
function UWBP_Title_WorldSettings_RandomizerSeedWindow_C:get() end

---@return UWidget
function UWBP_Title_WorldSettings_RandomizerSeedWindow_C:BP_GetDesiredFocusTarget() end
function UWBP_Title_WorldSettings_RandomizerSeedWindow_C:OnSetup() end
---@param Text FText
function UWBP_Title_WorldSettings_RandomizerSeedWindow_C:BndEvt__WBP_Title_WorldSettings_NameWindow_EditableTextBox_Name_K2Node_ComponentBoundEvent_0_OnEditableTextBoxChangedEvent__DelegateSignature(Text) end
---@param Text FText
---@param CommitMethod ETextCommit::Type
function UWBP_Title_WorldSettings_RandomizerSeedWindow_C:BndEvt__WBP_Title_WorldSettings_NameWindow_EditableTextBox_Name_K2Node_ComponentBoundEvent_1_OnEditableTextBoxCommittedEvent__DelegateSignature(Text, CommitMethod) end
function UWBP_Title_WorldSettings_RandomizerSeedWindow_C:BndEvt__WBP_Title_WorldSettings_NameWindow_WBP_CommonButton_K2Node_ComponentBoundEvent_2_OnClicked__DelegateSignature() end
---@param EntryPoint int32
function UWBP_Title_WorldSettings_RandomizerSeedWindow_C:ExecuteUbergraph_WBP_Title_WorldSettings_RandomizerSeedWindow(EntryPoint) end


