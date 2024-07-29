---@meta

---@class UWBP_InLevelLoadingFade_C : UWBP_PalFadeWidgetBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field In UWidgetAnimation
---@field WBP_LoadingScreen UWBP_LoadingScreen_C
---@field WBP_Title_ProgressBar UWBP_Title_ProgressBar_C
---@field Step int32
---@field ProgressDisplay boolean
UWBP_InLevelLoadingFade_C = {}

---@return UWBP_InLevelLoadingFade_C
function UWBP_InLevelLoadingFade_C:get() end

function UWBP_InLevelLoadingFade_C:FadeOut() end
function UWBP_InLevelLoadingFade_C:FadeIn() end
function UWBP_InLevelLoadingFade_C:Setup_ForOverride() end
function UWBP_InLevelLoadingFade_C:Finished_50648C2D41952F044CFD8F9629D4027A() end
function UWBP_InLevelLoadingFade_C:Finished_BCA2D9DB46EBD8925174F885E2A96DAA() end
function UWBP_InLevelLoadingFade_C:AnmEvent_In() end
function UWBP_InLevelLoadingFade_C:AnmEvent_Out() end
function UWBP_InLevelLoadingFade_C:Construct() end
function UWBP_InLevelLoadingFade_C:Destruct() end
---@param FadeParameter UPalHUDDispatchParameter_FadeWidget
function UWBP_InLevelLoadingFade_C:Setup(FadeParameter) end
---@param AddStep int32
---@param MaxStep int32
function UWBP_InLevelLoadingFade_C:UpdateProgressStep(AddStep, MaxStep) end
---@param EntryPoint int32
function UWBP_InLevelLoadingFade_C:ExecuteUbergraph_WBP_InLevelLoadingFade(EntryPoint) end


