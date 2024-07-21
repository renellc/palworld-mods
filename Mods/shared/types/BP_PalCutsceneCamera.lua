---@meta

---@class ABP_PalCutsceneCamera_C : ACineCameraActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SceneCaptureComponent2D USceneCaptureComponent2D
---@field BossDemoWidgetMap TMap<EPalBossType, TSubclassOf<UWBP_BossDemoBase_C>>
---@field NowDisplayingBossDemoWidget UWBP_BossDemoBase_C
ABP_PalCutsceneCamera_C = {}

function ABP_PalCutsceneCamera_C:StopBossDemoCapture() end
---@param BossType EPalBossType
function ABP_PalCutsceneCamera_C:StartCaptureBossDemo(BossType) end
function ABP_PalCutsceneCamera_C:PreSetupBossDemoCapture() end
---@param DeltaSeconds float
function ABP_PalCutsceneCamera_C:ReceiveTick(DeltaSeconds) end
---@param EndPlayReason EEndPlayReason::Type
function ABP_PalCutsceneCamera_C:ReceiveEndPlay(EndPlayReason) end
---@param EntryPoint int32
function ABP_PalCutsceneCamera_C:ExecuteUbergraph_BP_PalCutsceneCamera(EntryPoint) end


