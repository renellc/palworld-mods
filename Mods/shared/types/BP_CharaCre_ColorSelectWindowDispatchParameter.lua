---@meta

---@class UBP_CharaCre_ColorSelectWindowDispatchParameter_C : UPalHUDDispatchParameterBase
---@field SelectedColor FLinearColor
---@field PresetColorArray TArray<FLinearColor>
---@field DefaultColor FLinearColor
---@field OnChangedColor FBP_CharaCre_ColorSelectWindowDispatchParameter_COnChangedColor
---@field RelativePositionWidget UWidget
UBP_CharaCre_ColorSelectWindowDispatchParameter_C = {}

---@return UBP_CharaCre_ColorSelectWindowDispatchParameter_C
function UBP_CharaCre_ColorSelectWindowDispatchParameter_C:get() end

---@param Color FLinearColor
function UBP_CharaCre_ColorSelectWindowDispatchParameter_C:OnChangedColor__DelegateSignature(Color) end


