---@meta

---@class UBP_HitCalculator_MyLocation_C : UPalHitLocationCalculator
UBP_HitCalculator_MyLocation_C = {}

---@return UBP_HitCalculator_MyLocation_C
function UBP_HitCalculator_MyLocation_C:get() end

---@param MyHitComponent UPrimitiveComponent
---@param OtherHitComponent UPrimitiveComponent
---@return FVector
function UBP_HitCalculator_MyLocation_C:CalcLocation(MyHitComponent, OtherHitComponent) end


