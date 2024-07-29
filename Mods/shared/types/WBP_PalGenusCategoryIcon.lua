---@meta

---@class UWBP_PalGenusCategoryIcon_C : UPalUserWidget
---@field Image_15 UImage
---@field IconMap TMap<EPalGenusCategoryType, TSoftObjectPtr<UTexture2D>>
UWBP_PalGenusCategoryIcon_C = {}

---@return UWBP_PalGenusCategoryIcon_C
function UWBP_PalGenusCategoryIcon_C:get() end

---@param Category EPalGenusCategoryType
function UWBP_PalGenusCategoryIcon_C:Setup(Category) end


