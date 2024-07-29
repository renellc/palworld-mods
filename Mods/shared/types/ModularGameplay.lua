---@meta

---@class FActorInitStateChangedParams
---@field OwningActor AActor
---@field FeatureName FName
---@field Implementer UObject
---@field FeatureState FGameplayTag
FActorInitStateChangedParams = {}

---@return FActorInitStateChangedParams
function FActorInitStateChangedParams:get() end



---@class IGameFrameworkInitStateInterface : IInterface
IGameFrameworkInitStateInterface = {}

---@return IGameFrameworkInitStateInterface
function IGameFrameworkInitStateInterface:get() end

---@param Delegate FUnregisterInitStateDelegateDelegate
---@return boolean
function IGameFrameworkInitStateInterface:UnregisterInitStateDelegate(Delegate) end
---@param RequiredState FGameplayTag
---@param Delegate FRegisterAndCallForInitStateChangeDelegate
---@param bCallImmediately boolean
---@return boolean
function IGameFrameworkInitStateInterface:RegisterAndCallForInitStateChange(RequiredState, Delegate, bCallImmediately) end
---@param DesiredState FGameplayTag
---@return boolean
function IGameFrameworkInitStateInterface:HasReachedInitState(DesiredState) end
---@return FGameplayTag
function IGameFrameworkInitStateInterface:GetInitState() end
---@return FName
function IGameFrameworkInitStateInterface:GetFeatureName() end


---@class UControllerComponent : UGameFrameworkComponent
UControllerComponent = {}

---@return UControllerComponent
function UControllerComponent:get() end


---@class UGameFrameworkComponent : UActorComponent
UGameFrameworkComponent = {}

---@return UGameFrameworkComponent
function UGameFrameworkComponent:get() end


---@class UGameFrameworkComponentManager : UGameInstanceSubsystem
UGameFrameworkComponentManager = {}

---@return UGameFrameworkComponentManager
function UGameFrameworkComponentManager:get() end

---@param actorClass TSoftClassPtr<AActor>
---@param DelegateToRemove FUnregisterClassInitStateDelegateDelegateToRemove
---@return boolean
function UGameFrameworkComponentManager:UnregisterClassInitStateDelegate(actorClass, DelegateToRemove) end
---@param Actor AActor
---@param DelegateToRemove FUnregisterActorInitStateDelegateDelegateToRemove
---@return boolean
function UGameFrameworkComponentManager:UnregisterActorInitStateDelegate(Actor, DelegateToRemove) end
---@param Receiver AActor
---@param EventName FName
---@param bOnlyInGameWorlds boolean
function UGameFrameworkComponentManager:SendExtensionEvent(Receiver, EventName, bOnlyInGameWorlds) end
---@param Receiver AActor
function UGameFrameworkComponentManager:RemoveReceiver(Receiver) end
---@param actorClass TSoftClassPtr<AActor>
---@param FeatureName FName
---@param RequiredState FGameplayTag
---@param Delegate FRegisterAndCallForClassInitStateDelegate
---@param bCallImmediately boolean
---@return boolean
function UGameFrameworkComponentManager:RegisterAndCallForClassInitState(actorClass, FeatureName, RequiredState, Delegate, bCallImmediately) end
---@param Actor AActor
---@param FeatureName FName
---@param RequiredState FGameplayTag
---@param Delegate FRegisterAndCallForActorInitStateDelegate
---@param bCallImmediately boolean
---@return boolean
function UGameFrameworkComponentManager:RegisterAndCallForActorInitState(Actor, FeatureName, RequiredState, Delegate, bCallImmediately) end
---@param Receiver AActor
---@param bAddOnlyInGameWorlds boolean
function UGameFrameworkComponentManager:AddReceiver(Receiver, bAddOnlyInGameWorlds) end


---@class UGameStateComponent : UGameFrameworkComponent
UGameStateComponent = {}

---@return UGameStateComponent
function UGameStateComponent:get() end


---@class UPawnComponent : UGameFrameworkComponent
UPawnComponent = {}

---@return UPawnComponent
function UPawnComponent:get() end


---@class UPlayerStateComponent : UGameFrameworkComponent
UPlayerStateComponent = {}

---@return UPlayerStateComponent
function UPlayerStateComponent:get() end


