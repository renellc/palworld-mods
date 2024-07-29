---@meta

---@class UWBP_MainMenu_Pal_StatusElement_C : UUserWidget
---@field Image_Element UImage
---@field Text_ElementTypeName UBP_PalTextBlock_C
---@field TextureMap TMap<EPalElementType, TSoftObjectPtr<UTexture2D>>
UWBP_MainMenu_Pal_StatusElement_C = {}

---@return UWBP_MainMenu_Pal_StatusElement_C
function UWBP_MainMenu_Pal_StatusElement_C:get() end

---@param ElementType EPalElementType
function UWBP_MainMenu_Pal_StatusElement_C:Setup(ElementType) end


