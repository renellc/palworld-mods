---@meta

---@class UWBP_CharaCre_ScrollBoxContentBase_C : UPalUserWidget
---@field OnNotifyOpenSelectColorWindow FWBP_CharaCre_ScrollBoxContentBase_COnNotifyOpenSelectColorWindow
---@field OnNotifyCloseSelectColorWIndow FWBP_CharaCre_ScrollBoxContentBase_COnNotifyCloseSelectColorWIndow
UWBP_CharaCre_ScrollBoxContentBase_C = {}

---@return UWBP_CharaCre_ScrollBoxContentBase_C
function UWBP_CharaCre_ScrollBoxContentBase_C:get() end

---@param Widget UWidget
function UWBP_CharaCre_ScrollBoxContentBase_C:GetRestoreFocusTarget(Widget) end
---@param Param UPalHUDDispatchParameterBase
function UWBP_CharaCre_ScrollBoxContentBase_C:OnClosedSelectColorWindow_Internal(Param) end
---@param Parameter UBP_CharaCre_ColorSelectWindowDispatchParameter_C
function UWBP_CharaCre_ScrollBoxContentBase_C:OpenColorSelectWindow(Parameter) end
---@param Widget UWidget
function UWBP_CharaCre_ScrollBoxContentBase_C:GetTopFocusTarget(Widget) end
---@param MakeInfo FPalPlayerDataCharacterMakeInfo
function UWBP_CharaCre_ScrollBoxContentBase_C:ApplyMakeInfo(MakeInfo) end
function UWBP_CharaCre_ScrollBoxContentBase_C:OnNotifyCloseSelectColorWIndow__DelegateSignature() end
function UWBP_CharaCre_ScrollBoxContentBase_C:OnNotifyOpenSelectColorWindow__DelegateSignature() end


