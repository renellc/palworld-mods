---@meta

---@class UWBP_CharaCre_ScrollBoxContentSet_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field CommonActivatableWidgetSwitcher_27 UCommonActivatableWidgetSwitcher
---@field WBP_CharaCre_ScrollBoxContent_Body UWBP_CharaCre_ScrollBoxContent_Body_C
---@field WBP_CharaCre_ScrollBoxContent_Face UWBP_CharaCre_ScrollBoxContent_Face_C
---@field WBP_CharaCre_ScrollBoxContent_Hair UWBP_CharaCre_ScrollBoxContent_Hair_C
---@field WBP_CharaCre_ScrollBoxContent_Preset UWBP_CharaCre_ScrollBoxContent_Preset_C
---@field WBP_CharaCre_ScrollBoxContent_Voice UWBP_CharaCre_ScrollBoxContent_Voice_C
---@field OnNotifyOpenSelectColorWindow FWBP_CharaCre_ScrollBoxContentSet_COnNotifyOpenSelectColorWindow
---@field OnNotifyCloseColorSelectWindow FWBP_CharaCre_ScrollBoxContentSet_COnNotifyCloseColorSelectWindow
UWBP_CharaCre_ScrollBoxContentSet_C = {}

---@return UWBP_CharaCre_ScrollBoxContentSet_C
function UWBP_CharaCre_ScrollBoxContentSet_C:get() end

---@param HSV FLinearColor
function UWBP_CharaCre_ScrollBoxContentSet_C:GetSelectedEyeHSV(HSV) end
---@param CategoryType E_UICharacterMakeCategory::Type
---@param Widget UWidget
function UWBP_CharaCre_ScrollBoxContentSet_C:GetRestoreFocusTarget(CategoryType, Widget) end
---@param MakeInfo FPalPlayerDataCharacterMakeInfo
function UWBP_CharaCre_ScrollBoxContentSet_C:ApplyMakeInfo(MakeInfo) end
---@param TargetCategory E_UICharacterMakeCategory::Type
---@param Widget UWBP_CharaCre_ScrollBoxContentBase_C
function UWBP_CharaCre_ScrollBoxContentSet_C:GetWidgetByCategory(TargetCategory, Widget) end
---@param NewCategory E_UICharacterMakeCategory::Type
---@param Widget UWidget
function UWBP_CharaCre_ScrollBoxContentSet_C:GetTopFocusTarget(NewCategory, Widget) end
---@param NewCategory E_UICharacterMakeCategory::Type
function UWBP_CharaCre_ScrollBoxContentSet_C:ChangeMakeCategory(NewCategory) end
function UWBP_CharaCre_ScrollBoxContentSet_C:BndEvt__WBP_CharaCre_ScrollBoxContentSet_WBP_CharaCre_ScrollBoxContent_Body_K2Node_ComponentBoundEvent_0_OnNotifyOpenSelectColorWindow__DelegateSignature() end
function UWBP_CharaCre_ScrollBoxContentSet_C:BndEvt__WBP_CharaCre_ScrollBoxContentSet_WBP_CharaCre_ScrollBoxContent_Body_K2Node_ComponentBoundEvent_1_OnNotifyCloseSelectColorWindow__DelegateSignature() end
function UWBP_CharaCre_ScrollBoxContentSet_C:BndEvt__WBP_CharaCre_ScrollBoxContentSet_WBP_CharaCre_ScrollBoxContent_Face_K2Node_ComponentBoundEvent_2_OnNotifyOpenSelectColorWindow__DelegateSignature() end
function UWBP_CharaCre_ScrollBoxContentSet_C:BndEvt__WBP_CharaCre_ScrollBoxContentSet_WBP_CharaCre_ScrollBoxContent_Face_K2Node_ComponentBoundEvent_3_OnNotifyCloseSelectColorWindow__DelegateSignature() end
function UWBP_CharaCre_ScrollBoxContentSet_C:BndEvt__WBP_CharaCre_ScrollBoxContentSet_WBP_CharaCre_ScrollBoxContent_Hair_K2Node_ComponentBoundEvent_4_OnNotifyOpenSelectColorWindow__DelegateSignature() end
function UWBP_CharaCre_ScrollBoxContentSet_C:BndEvt__WBP_CharaCre_ScrollBoxContentSet_WBP_CharaCre_ScrollBoxContent_Hair_K2Node_ComponentBoundEvent_5_OnNotifyCloseSelectColorWindow__DelegateSignature() end
---@param EntryPoint int32
function UWBP_CharaCre_ScrollBoxContentSet_C:ExecuteUbergraph_WBP_CharaCre_ScrollBoxContentSet(EntryPoint) end
function UWBP_CharaCre_ScrollBoxContentSet_C:OnNotifyCloseColorSelectWindow__DelegateSignature() end
function UWBP_CharaCre_ScrollBoxContentSet_C:OnNotifyOpenSelectColorWindow__DelegateSignature() end


