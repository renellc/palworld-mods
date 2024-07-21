---@meta

---@class UBP_OilrigMachineSpawnerComponent_C : UPalOilrigMachineSpawnerComponent
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Handle UPalIndividualCharacterHandle
UBP_OilrigMachineSpawnerComponent_C = {}

UBP_OilrigMachineSpawnerComponent_C['Destroy by Dead'] = function() end
---@param DeadInfo FPalDeadInfo
UBP_OilrigMachineSpawnerComponent_C['On Dead'] = function(DeadInfo) end
---@param ID FPalInstanceID
UBP_OilrigMachineSpawnerComponent_C['Despawn Delegate'] = function(ID) end
---@param ID FPalInstanceID
UBP_OilrigMachineSpawnerComponent_C['Spawn Delegate'] = function(ID) end
function UBP_OilrigMachineSpawnerComponent_C:DespawnMecha() end
---@param Location FVector
---@param Rotate FRotator
function UBP_OilrigMachineSpawnerComponent_C:SpawnMecha(Location, Rotate) end
---@param Location FVector
---@param Rotate FRotator
function UBP_OilrigMachineSpawnerComponent_C:SpawnMachine(Location, Rotate) end
function UBP_OilrigMachineSpawnerComponent_C:DespawnMachine() end
---@param EntryPoint int32
function UBP_OilrigMachineSpawnerComponent_C:ExecuteUbergraph_BP_OilrigMachineSpawnerComponent(EntryPoint) end


