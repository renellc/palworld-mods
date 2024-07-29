---@meta

---@class FDataRegistrySourceToAdd
---@field RegistryToAddTo FName
---@field AssetPriority int32
---@field bClientSource boolean
---@field bServerSource boolean
---@field DataTableToAdd TSoftObjectPtr<UDataTable>
---@field CurveTableToAdd TSoftObjectPtr<UCurveTable>
FDataRegistrySourceToAdd = {}

---@return FDataRegistrySourceToAdd
function FDataRegistrySourceToAdd:get() end



---@class FGameFeatureComponentEntry
---@field actorClass TSoftClassPtr<AActor>
---@field ComponentClass TSoftClassPtr<UActorComponent>
---@field bClientComponent boolean
---@field bServerComponent boolean
FGameFeatureComponentEntry = {}

---@return FGameFeatureComponentEntry
function FGameFeatureComponentEntry:get() end



---@class FGameFeaturePluginIdentifier
FGameFeaturePluginIdentifier = {}

---@return FGameFeaturePluginIdentifier
function FGameFeaturePluginIdentifier:get() end


---@class FGameFeaturePluginStateMachineProperties
---@field GameFeatureData UGameFeatureData
FGameFeaturePluginStateMachineProperties = {}

---@return FGameFeaturePluginStateMachineProperties
function FGameFeaturePluginStateMachineProperties:get() end



---@class FInstallBundlePluginProtocolMetaData
FInstallBundlePluginProtocolMetaData = {}

---@return FInstallBundlePluginProtocolMetaData
function FInstallBundlePluginProtocolMetaData:get() end


---@class IGameFeatureStateChangeObserver : IInterface
IGameFeatureStateChangeObserver = {}

---@return IGameFeatureStateChangeObserver
function IGameFeatureStateChangeObserver:get() end


---@class UDefaultGameFeaturesProjectPolicies : UGameFeaturesProjectPolicies
UDefaultGameFeaturesProjectPolicies = {}

---@return UDefaultGameFeaturesProjectPolicies
function UDefaultGameFeaturesProjectPolicies:get() end


---@class UGameFeatureAction : UObject
UGameFeatureAction = {}

---@return UGameFeatureAction
function UGameFeatureAction:get() end


---@class UGameFeatureAction_AddCheats : UGameFeatureAction
---@field CheatManagers TArray<TSoftClassPtr<UCheatManagerExtension>>
---@field bLoadCheatManagersAsync boolean
---@field SpawnedCheatManagers TArray<TWeakObjectPtr<UCheatManagerExtension>>
UGameFeatureAction_AddCheats = {}

---@return UGameFeatureAction_AddCheats
function UGameFeatureAction_AddCheats:get() end



---@class UGameFeatureAction_AddComponents : UGameFeatureAction
---@field ComponentList TArray<FGameFeatureComponentEntry>
UGameFeatureAction_AddComponents = {}

---@return UGameFeatureAction_AddComponents
function UGameFeatureAction_AddComponents:get() end



---@class UGameFeatureAction_AddWPContent : UGameFeatureAction
---@field ContentBundleDescriptor UContentBundleDescriptor
UGameFeatureAction_AddWPContent = {}

---@return UGameFeatureAction_AddWPContent
function UGameFeatureAction_AddWPContent:get() end



---@class UGameFeatureAction_DataRegistry : UGameFeatureAction
---@field RegistriesToAdd TArray<TSoftObjectPtr<UDataRegistry>>
---@field bPreloadInEditor boolean
UGameFeatureAction_DataRegistry = {}

---@return UGameFeatureAction_DataRegistry
function UGameFeatureAction_DataRegistry:get() end



---@class UGameFeatureAction_DataRegistrySource : UGameFeatureAction
---@field SourcesToAdd TArray<FDataRegistrySourceToAdd>
---@field bPreloadInEditor boolean
UGameFeatureAction_DataRegistrySource = {}

---@return UGameFeatureAction_DataRegistrySource
function UGameFeatureAction_DataRegistrySource:get() end



---@class UGameFeatureData : UPrimaryDataAsset
---@field Actions TArray<UGameFeatureAction>
---@field PrimaryAssetTypesToScan TArray<FPrimaryAssetTypeInfo>
UGameFeatureData = {}

---@return UGameFeatureData
function UGameFeatureData:get() end



---@class UGameFeaturePluginStateMachine : UObject
---@field StateProperties FGameFeaturePluginStateMachineProperties
UGameFeaturePluginStateMachine = {}

---@return UGameFeaturePluginStateMachine
function UGameFeaturePluginStateMachine:get() end



---@class UGameFeaturesProjectPolicies : UObject
UGameFeaturesProjectPolicies = {}

---@return UGameFeaturesProjectPolicies
function UGameFeaturesProjectPolicies:get() end


---@class UGameFeaturesSubsystem : UEngineSubsystem
---@field GameFeaturePluginStateMachines TMap<FGameFeaturePluginIdentifier, UGameFeaturePluginStateMachine>
---@field TerminalGameFeaturePluginStateMachines TArray<UGameFeaturePluginStateMachine>
---@field Observers TArray<UObject>
---@field GameSpecificPolicies UGameFeaturesProjectPolicies
UGameFeaturesSubsystem = {}

---@return UGameFeaturesSubsystem
function UGameFeaturesSubsystem:get() end



---@class UGameFeaturesSubsystemSettings : UDeveloperSettings
---@field GameFeaturesManagerClassName FSoftClassPath
---@field DisabledPlugins TArray<FString>
---@field AdditionalPluginMetadataKeys TArray<FString>
UGameFeaturesSubsystemSettings = {}

---@return UGameFeaturesSubsystemSettings
function UGameFeaturesSubsystemSettings:get() end



