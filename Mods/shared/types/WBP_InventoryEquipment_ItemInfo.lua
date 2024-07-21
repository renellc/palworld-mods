---@meta

---@class UWBP_InventoryEquipment_ItemInfo_C : UPalUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Anm_Use UWidgetAnimation
---@field Anm_rarity UWidgetAnimation
---@field Canvas_CommonDetail UCanvasPanel
---@field Canvas_ItemNum UCanvasPanel
---@field Canvas_KeyGuide_Use UCanvasPanel
---@field Canvas_MainParameter UCanvasPanel
---@field Canvas_SkillInfo UCanvasPanel
---@field Canvas_SubParameter UCanvasPanel
---@field Canvas_SubParameter_1 UCanvasPanel
---@field Canvas_TechPoint UCanvasPanel
---@field Horizontal_KeyGuide_Equip UHorizontalBox
---@field Horizontal_KeyGuide_LiftHalf UHorizontalBox
---@field Horizontal_KeyGuide_LiftOne UHorizontalBox
---@field Horizontal_KeyGuide_Move UHorizontalBox
---@field Horizontal_KeyGuide_Use UHorizontalBox
---@field HorizontalBox_Durability UHorizontalBox
---@field HorizontalBox_KeyGuide UHorizontalBox
---@field IconArrow_WeightReduce UImage
---@field Image_Icon_TechPoint UImage
---@field Image_ItemIcon UImage
---@field Image_ItemIconShadow UImage
---@field Overlay_Consumable UOverlay
---@field Overlay_RarityText UOverlay
---@field RichText_ItemInfo UBP_PalRichTextBlock_C
---@field RichText_ItemName UBP_PalRichTextBlock_C
---@field SizeBox_LiftHalf_RightIcon USizeBox
---@field SizeBox_LiftOne_RightIcon USizeBox
---@field Spacer_KeyGuide_Equip USpacer
---@field Spacer_KeyGuide_Move USpacer
---@field Spacer_KeyGuide_Use USpacer
---@field Text_CTNum UBP_PalTextBlock_C
---@field Text_Cu UBP_PalTextBlock_C
---@field Text_DurableNum UBP_PalTextBlock_C
---@field Text_Equip UBP_PalTextBlock_C
---@field Text_ItemCategory UBP_PalTextBlock_C
---@field Text_ItemNumTitle UBP_PalTextBlock_C
---@field Text_ItemNumValue UBP_PalTextBlock_C
---@field Text_MainParamTitle UBP_PalTextBlock_C
---@field Text_MainParamValue UBP_PalTextBlock_C
---@field Text_NowWeight UBP_PalTextBlock_C
---@field Text_Ra UBP_PalTextBlock_C
---@field Text_SubParamTitle UBP_PalTextBlock_C
---@field Text_SubParamTitle_1 UBP_PalTextBlock_C
---@field Text_SubParamValue UBP_PalTextBlock_C
---@field Text_SubParamValue_1 UBP_PalTextBlock_C
---@field Text_Tech_PointValue UBP_PalTextBlock_C
---@field Text_TechPointTitle UBP_PalTextBlock_C
---@field TextPowerNum UBP_PalTextBlock_C
---@field VerticalBox_AdditionalInfo UVerticalBox
---@field WBP_InventoryEquipment_ItemInfo_addeffect UWBP_InventoryEquipment_ItemInfo_addeffect_C
---@field WBP_InventoryEquipment_ItemInfo_addeffect_1 UWBP_InventoryEquipment_ItemInfo_addeffect_C
---@field WBP_InventoryEquipment_ItemInfo_addeffect_2 UWBP_InventoryEquipment_ItemInfo_addeffect_C
---@field WBP_InventoryEquipment_ItemInfo_addeffect_3 UWBP_InventoryEquipment_ItemInfo_addeffect_C
---@field WBP_InventoryEquipment_ItemInfo_Caution UWBP_InventoryEquipment_ItemInfo_Caution_C
---@field WBP_InventoryEquipment_ItemInfo_Tecnology UWBP_InventoryEquipment_ItemInfo_Tecnology_C
---@field WBP_InventoryEquipment_PalIcon UWBP_InventoryEquipment_PalIcon_C
---@field WBP_MainMenu_Pal_StatusElement UWBP_MainMenu_Pal_StatusElement_C
---@field WBP_PalKeyGuideIcon UWBP_PalKeyGuideIcon_C
---@field WBP_PalKeyGuideIcon_1 UWBP_PalKeyGuideIcon_C
---@field WBP_PlayerInputKeyGuideIcon UWBP_PlayerInputKeyGuideIcon_C
---@field WBP_PlayerInputKeyGuideIcon_1 UWBP_PlayerInputKeyGuideIcon_C
---@field WBP_PlayerInputKeyGuideIcon_2 UWBP_PlayerInputKeyGuideIcon_C
---@field WBP_PlayerInputKeyGuideIcon_65 UWBP_PlayerInputKeyGuideIcon_C
---@field WBP_ShopSellPrice UWBP_ShopSellPrice_C
---@field NowDisplayType E_PalUIItemInfoWindowDIsplayType::Type
---@field DefaultDisplayType E_PalUIItemInfoWindowDIsplayType::Type
---@field MainParamMsgIDMap TMap<EPalItemTypeA, FDataTableRowHandle>
---@field SubParamMsgIDMap TMap<EPalItemTypeA, FDataTableRowHandle>
---@field MainParamShieldOverrideMsgID FDataTableRowHandle
---@field UseItem FPalDataTableRowName_UIInputAction
---@field CachedDisplayInfo FPalUICommonItemInfoDisplayData
---@field EquipMsgID FDataTableRowHandle
---@field RemoveEquipMsgID FDataTableRowHandle
---@field ItemNumTitleMsgID FDataTableRowHandle
---@field HPRegeneMsgID FDataTableRowHandle
---@field RegeneDurationMsgID FDataTableRowHandle
---@field MaskedTechTitleMsgID FDataTableRowHandle
---@field MaskedTechDescMsgID FDataTableRowHandle
---@field RarityMsgIDs TArray<FDataTableRowHandle>
---@field IsBossTechPoint boolean
---@field NormalMsgId FDataTableRowHandle
---@field AdditionalInfoArray TArray<UWBP_InventoryEquipment_ItemInfo_addeffect_C>
UWBP_InventoryEquipment_ItemInfo_C = {}

---@param PassiveSkillNameArray TArray<FName>
---@param OutTextArray TArray<FText>
function UWBP_InventoryEquipment_ItemInfo_C:ConvertPassiveSkillNameToText(PassiveSkillNameArray, OutTextArray) end
---@param FoodData FPalStatusEffectFoodDataRow
UWBP_InventoryEquipment_ItemInfo_C['Set Sub Param Regene'] = function(FoodData) end
---@param ItemId FName
---@param IsRegene boolean
---@param FoodInfo FPalStatusEffectFoodDataRow
function UWBP_InventoryEquipment_ItemInfo_C:GetItemRegeneInfo(ItemId, IsRegene, FoodInfo) end
function UWBP_InventoryEquipment_ItemInfo_C:SetupPrice() end
function UWBP_InventoryEquipment_ItemInfo_C:SetupItemRarity() end
function UWBP_InventoryEquipment_ItemInfo_C:SetupItemDurability() end
---@param TechData FPalTechnologyRecipeUnlockDataTableRow
---@param IsMasked boolean
UWBP_InventoryEquipment_ItemInfo_C['Setup Tech Mat Details'] = function(TechData, IsMasked) end
---@param technologyName FName
---@param CategoryText FText
UWBP_InventoryEquipment_ItemInfo_C['Get Display Technology Category Name'] = function(technologyName, CategoryText) end
---@param technologyName FName
---@param IsMasked boolean
---@param IconTexture UTexture2D
UWBP_InventoryEquipment_ItemInfo_C['Setup by Technology Name'] = function(technologyName, IsMasked, IconTexture) end
---@param Slot UPalItemSlot
---@param IsEquipable boolean
UWBP_InventoryEquipment_ItemInfo_C['Is Equipable Item'] = function(Slot, IsEquipable) end
---@param Slot UPalItemSlot
function UWBP_InventoryEquipment_ItemInfo_C:OnUpdateTargetSlot(Slot) end
function UWBP_InventoryEquipment_ItemInfo_C:UnbindEvent() end
---@param bNewInputType ECommonInputType
function UWBP_InventoryEquipment_ItemInfo_C:OnInputMethodChanged(bNewInputType) end
---@param StaticItemId FName
function UWBP_InventoryEquipment_ItemInfo_C:SetupUseableKeyGuide_Internal(StaticItemId) end
function UWBP_InventoryEquipment_ItemInfo_C:SetupSkillInfo() end
function UWBP_InventoryEquipment_ItemInfo_C:SetupTechDetails() end
function UWBP_InventoryEquipment_ItemInfo_C:SetupKeyGuide() end
function UWBP_InventoryEquipment_ItemInfo_C:HideAdditionalText() end
---@param TextArray TArray<FText>
function UWBP_InventoryEquipment_ItemInfo_C:SetImportanyAdditionalText(TextArray) end
---@param Text FText
UWBP_InventoryEquipment_ItemInfo_C['Set Simple Additional Text'] = function(Text) end
---@param StaticItemId FName
UWBP_InventoryEquipment_ItemInfo_C['Setup Parameter'] = function(StaticItemId) end
UWBP_InventoryEquipment_ItemInfo_C['Setup Item Weight'] = function() end
function UWBP_InventoryEquipment_ItemInfo_C:SetupItemNum() end
function UWBP_InventoryEquipment_ItemInfo_C:HideMainParameter() end
function UWBP_InventoryEquipment_ItemInfo_C:SetupItemDescription() end
UWBP_InventoryEquipment_ItemInfo_C['Setup Item Name'] = function() end
---@param ItemId FName
UWBP_InventoryEquipment_ItemInfo_C['Set Pal Gear Icon'] = function(ItemId) end
---@param StaticItemId FName
UWBP_InventoryEquipment_ItemInfo_C['Setup Item Icon'] = function(StaticItemId) end
---@param DisplayInfo FPalUICommonItemInfoDisplayData
function UWBP_InventoryEquipment_ItemInfo_C:SetupByDisplayInfo(DisplayInfo) end
---@param Text FText
UWBP_InventoryEquipment_ItemInfo_C['Set Main Param Text'] = function(Text) end
---@param Value int32
UWBP_InventoryEquipment_ItemInfo_C['Set Main Param Value'] = function(Value) end
function UWBP_InventoryEquipment_ItemInfo_C:HideSubParameter() end
---@param Text FText
UWBP_InventoryEquipment_ItemInfo_C['Set Sub Param Text'] = function(Text) end
---@param DisplayType E_PalUIItemInfoWindowDIsplayType::Type
UWBP_InventoryEquipment_ItemInfo_C['Change Display Mode'] = function(DisplayType) end
---@param Value int32
UWBP_InventoryEquipment_ItemInfo_C['Set Sub Param Value'] = function(Value) end
function UWBP_InventoryEquipment_ItemInfo_C:Construct() end
function UWBP_InventoryEquipment_ItemInfo_C:OnInitialized() end
function UWBP_InventoryEquipment_ItemInfo_C:Destruct() end
---@param EntryPoint int32
function UWBP_InventoryEquipment_ItemInfo_C:ExecuteUbergraph_WBP_InventoryEquipment_ItemInfo(EntryPoint) end


