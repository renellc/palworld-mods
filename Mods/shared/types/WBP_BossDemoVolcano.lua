---@meta

---@class UWBP_BossDemoVolcano_C : UWBP_BossDemoBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Anm_Open UWidgetAnimation
---@field Flash UImage
---@field Image_95 UImage
---@field WBP_BossBattle_BossCut03 UWBP_BossBattle_BossCut03_C
---@field WBP_BossBattle_BossCutBase03 UWBP_BossBattle_BossCutBase03_C
UWBP_BossDemoVolcano_C = {}

function UWBP_BossDemoVolcano_C:OnStartEvent() end
function UWBP_BossDemoVolcano_C:SetupText() end
function UWBP_BossDemoVolcano_C:Finished_CBE810D944372A21A78534865EDA949A() end
function UWBP_BossDemoVolcano_C:AnmEvent_Open() end
---@param EntryPoint int32
function UWBP_BossDemoVolcano_C:ExecuteUbergraph_WBP_BossDemoVolcano(EntryPoint) end


