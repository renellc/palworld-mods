---@meta

---@class FGameplayResourceSet
FGameplayResourceSet = {}

---@return FGameplayResourceSet
function FGameplayResourceSet:get() end


---@class IGameplayTaskOwnerInterface : IInterface
IGameplayTaskOwnerInterface = {}

---@return IGameplayTaskOwnerInterface
function IGameplayTaskOwnerInterface:get() end


---@class UGameplayTask : UObject
---@field InstanceName FName
---@field ResourceOverlapPolicy ETaskResourceOverlapPolicy
---@field ChildTask UGameplayTask
UGameplayTask = {}

---@return UGameplayTask
function UGameplayTask:get() end

function UGameplayTask:ReadyForActivation() end
function UGameplayTask:GenericGameplayTaskDelegate__DelegateSignature() end
function UGameplayTask:EndTask() end


---@class UGameplayTaskResource : UObject
---@field ManualResourceID int32
---@field AutoResourceID int8
---@field bManuallySetID boolean
UGameplayTaskResource = {}

---@return UGameplayTaskResource
function UGameplayTaskResource:get() end



---@class UGameplayTask_ClaimResource : UGameplayTask
UGameplayTask_ClaimResource = {}

---@return UGameplayTask_ClaimResource
function UGameplayTask_ClaimResource:get() end

---@param InTaskOwner TScriptInterface<IGameplayTaskOwnerInterface>
---@param ResourceClasses TArray<TSubclassOf<UGameplayTaskResource>>
---@param Priority uint8
---@param TaskInstanceName FName
---@return UGameplayTask_ClaimResource
function UGameplayTask_ClaimResource:ClaimResources(InTaskOwner, ResourceClasses, Priority, TaskInstanceName) end
---@param InTaskOwner TScriptInterface<IGameplayTaskOwnerInterface>
---@param ResourceClass TSubclassOf<UGameplayTaskResource>
---@param Priority uint8
---@param TaskInstanceName FName
---@return UGameplayTask_ClaimResource
function UGameplayTask_ClaimResource:ClaimResource(InTaskOwner, ResourceClass, Priority, TaskInstanceName) end


---@class UGameplayTask_SpawnActor : UGameplayTask
---@field Success FGameplayTask_SpawnActorSuccess
---@field DidNotSpawn FGameplayTask_SpawnActorDidNotSpawn
---@field ClassToSpawn TSubclassOf<AActor>
UGameplayTask_SpawnActor = {}

---@return UGameplayTask_SpawnActor
function UGameplayTask_SpawnActor:get() end

---@param TaskOwner TScriptInterface<IGameplayTaskOwnerInterface>
---@param SpawnLocation FVector
---@param SpawnRotation FRotator
---@param Class TSubclassOf<AActor>
---@param bSpawnOnlyOnAuthority boolean
---@return UGameplayTask_SpawnActor
function UGameplayTask_SpawnActor:SpawnActor(TaskOwner, SpawnLocation, SpawnRotation, Class, bSpawnOnlyOnAuthority) end
---@param WorldContextObject UObject
---@param SpawnedActor AActor
function UGameplayTask_SpawnActor:FinishSpawningActor(WorldContextObject, SpawnedActor) end
---@param WorldContextObject UObject
---@param SpawnedActor AActor
---@return boolean
function UGameplayTask_SpawnActor:BeginSpawningActor(WorldContextObject, SpawnedActor) end


---@class UGameplayTask_TimeLimitedExecution : UGameplayTask
---@field OnFinished FGameplayTask_TimeLimitedExecutionOnFinished
---@field OnTimeExpired FGameplayTask_TimeLimitedExecutionOnTimeExpired
UGameplayTask_TimeLimitedExecution = {}

---@return UGameplayTask_TimeLimitedExecution
function UGameplayTask_TimeLimitedExecution:get() end



---@class UGameplayTask_WaitDelay : UGameplayTask
---@field OnFinish FGameplayTask_WaitDelayOnFinish
UGameplayTask_WaitDelay = {}

---@return UGameplayTask_WaitDelay
function UGameplayTask_WaitDelay:get() end

---@param TaskOwner TScriptInterface<IGameplayTaskOwnerInterface>
---@param Time float
---@param Priority uint8
---@return UGameplayTask_WaitDelay
function UGameplayTask_WaitDelay:TaskWaitDelay(TaskOwner, Time, Priority) end
function UGameplayTask_WaitDelay:TaskDelayDelegate__DelegateSignature() end


---@class UGameplayTasksComponent : UActorComponent
---@field bIsNetDirty boolean
---@field TaskPriorityQueue TArray<UGameplayTask>
---@field TickingTasks TArray<UGameplayTask>
---@field KnownTasks TArray<UGameplayTask>
---@field OnClaimedResourcesChange FGameplayTasksComponentOnClaimedResourcesChange
---@field SimulatedTasks TArray<UGameplayTask>
UGameplayTasksComponent = {}

---@return UGameplayTasksComponent
function UGameplayTasksComponent:get() end

---@param PreviousSimulatedTasks TArray<UGameplayTask>
function UGameplayTasksComponent:OnRep_SimulatedTasks(PreviousSimulatedTasks) end
---@param TaskOwner TScriptInterface<IGameplayTaskOwnerInterface>
---@param Task UGameplayTask
---@param Priority uint8
---@param AdditionalRequiredResources TArray<TSubclassOf<UGameplayTaskResource>>
---@param AdditionalClaimedResources TArray<TSubclassOf<UGameplayTaskResource>>
---@return EGameplayTaskRunResult
function UGameplayTasksComponent:K2_RunGameplayTask(TaskOwner, Task, Priority, AdditionalRequiredResources, AdditionalClaimedResources) end


