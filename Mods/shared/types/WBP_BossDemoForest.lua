---@meta

---@class UWBP_BossDemoForest_C : UWBP_BossDemoBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Anm_Open UWidgetAnimation
---@field Flash UImage
---@field Image_81 UImage
---@field WBP_BossBattle_BossCut01 UWBP_BossBattle_BossCut01_C
---@field WBP_BossBattle_BossCutBase01 UWBP_BossBattle_BossCutBase01_C
UWBP_BossDemoForest_C = {}

---@return UWBP_BossDemoForest_C
function UWBP_BossDemoForest_C:get() end

function UWBP_BossDemoForest_C:OnStartEvent() end
function UWBP_BossDemoForest_C:SetupText() end
function UWBP_BossDemoForest_C:Finished_5237A44149AAD13ADBE5C9A87856B8C4() end
function UWBP_BossDemoForest_C:AnmEvent_Open() end
---@param EntryPoint int32
function UWBP_BossDemoForest_C:ExecuteUbergraph_WBP_BossDemoForest(EntryPoint) end


