---@meta

---@class UWBP_PalOverallUILayout_C : UPalPrimaryGameLayoutBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field CanvasPanel_3 UCanvasPanel
---@field CanvasPanel_Fade UCanvasPanel
---@field Layer_0 UPalActivatableWidgetContainer
---@field Layer_1 UPalActivatableWidgetContainer
---@field Layer_2 UPalActivatableWidgetContainer
---@field Layer_3 UPalActivatableWidgetContainer
---@field Layer_4 UPalActivatableWidgetContainer
---@field Layer_5 UPalActivatableWidgetContainer
---@field Layer_6 UPalActivatableWidgetContainer
---@field Layer_7 UPalActivatableWidgetContainer
---@field Menu UPalActivatableWidgetContainer
---@field Modal UPalActivatableWidgetContainer
---@field SizeBox_0 USizeBox
---@field WBP_AutoSave UWBP_AutoSave_C
---@field WBP_CommonReward UWBP_CommonReward_C
---@field WBP_InventoryEquipment_ItemInfo UWBP_InventoryEquipment_ItemInfo_C
---@field WBP_MainMenu_Cursor UWBP_MainMenu_Cursor_C
---@field WBP_PalActionBar_C_8 UWBP_PalActionBar_C
---@field WBP_PalLiftItem UWBP_PalLiftItem_C
---@field FadeWidgetCanvasMap TMap<EPalFadeWidgetLayerType, UCanvasPanel>
---@field FadeWidgetMap TMap<EPalFadeWidgetType, TSubclassOf<UWBP_PalFadeWidgetBase_C>>
---@field WaitFadeOutLayers TArray<EPalFadeWidgetLayerType>
---@field LiftSlotModel UPalUILiftSlotModel
UWBP_PalOverallUILayout_C = {}

---@return UWBP_PalOverallUILayout_C
function UWBP_PalOverallUILayout_C:get() end

function UWBP_PalOverallUILayout_C:OnInitialized() end
---@param TargetWidget UWidget
function UWBP_PalOverallUILayout_C:ShowFocusCursor(TargetWidget) end
function UWBP_PalOverallUILayout_C:HideFocusCursor() end
---@param LayerType EPalFadeWidgetLayerType
---@param FadeParameter UPalHUDDispatchParameter_FadeWidget
function UWBP_PalOverallUILayout_C:FadeIn(LayerType, FadeParameter) end
---@param LayerType EPalFadeWidgetLayerType
function UWBP_PalOverallUILayout_C:FadeOut(LayerType) end
---@param DisplayData FPalUICommonItemInfoDisplayData
function UWBP_PalOverallUILayout_C:ShowCommonItemInfo(DisplayData) end
function UWBP_PalOverallUILayout_C:HideCommonItemInfo() end
function UWBP_PalOverallUILayout_C:ShowLiftIcon() end
function UWBP_PalOverallUILayout_C:HideLiftIcon() end
---@param MyGeometry FGeometry
---@param InDeltaTime float
function UWBP_PalOverallUILayout_C:Tick(MyGeometry, InDeltaTime) end
function UWBP_PalOverallUILayout_C:SetupLiftIcon() end
---@param RewardDisplayData FPalUICommonRewardDisplayData
function UWBP_PalOverallUILayout_C:ShowCommonReward(RewardDisplayData) end
---@param EntryPoint int32
function UWBP_PalOverallUILayout_C:ExecuteUbergraph_WBP_PalOverallUILayout(EntryPoint) end


