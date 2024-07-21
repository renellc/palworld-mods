---@meta

---@class ABP_PalOilrigController_C : APalOilrigController
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Debug_Mesh UStaticMeshComponent
---@field BP_OilrigMachineSpawnerComponent UBP_OilrigMachineSpawnerComponent_C
---@field DefaultSceneRoot USceneComponent
ABP_PalOilrigController_C = {}

function ABP_PalOilrigController_C:SoundStop() end
---@param DeltaSeconds float
function ABP_PalOilrigController_C:ReceiveTick(DeltaSeconds) end
function ABP_PalOilrigController_C:OnStartCombatToAll_BP() end
---@param EntryPoint int32
function ABP_PalOilrigController_C:ExecuteUbergraph_BP_PalOilrigController(EntryPoint) end


