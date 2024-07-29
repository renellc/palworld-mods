---@meta

---@class UWBP_ShopSellPrice_C : UPalUserWidget
---@field IconMoney UImage
---@field Text_Price UBP_PalTextBlock_C
UWBP_ShopSellPrice_C = {}

---@return UWBP_ShopSellPrice_C
function UWBP_ShopSellPrice_C:get() end

---@param Price int32
---@param AdditionalPrice int32
function UWBP_ShopSellPrice_C:SetPrice(Price, AdditionalPrice) end


