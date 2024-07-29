---@meta

---@class AQosBeaconClient : AOnlineBeaconClient
AQosBeaconClient = {}

---@return AQosBeaconClient
function AQosBeaconClient:get() end

---@param InSessionId FString
function AQosBeaconClient:ServerQosRequest(InSessionId) end
---@param Response EQosResponseType
function AQosBeaconClient:ClientQosResponse(Response) end


---@class AQosBeaconHost : AOnlineBeaconHostObject
AQosBeaconHost = {}

---@return AQosBeaconHost
function AQosBeaconHost:get() end


---@class FDatacenterQosInstance
---@field Definition FQosDatacenterInfo
---@field Result EQosDatacenterResult
---@field AvgPingMs int32
---@field PingResults TArray<int32>
---@field LastCheckTimestamp FDateTime
---@field bUsable boolean
FDatacenterQosInstance = {}

---@return FDatacenterQosInstance
function FDatacenterQosInstance:get() end



---@class FQosDatacenterInfo
---@field ID FString
---@field regionId FString
---@field bEnabled boolean
---@field Servers TArray<FQosPingServerInfo>
FQosDatacenterInfo = {}

---@return FQosDatacenterInfo
function FQosDatacenterInfo:get() end



---@class FQosPingServerInfo
---@field Address FString
---@field Port int32
FQosPingServerInfo = {}

---@return FQosPingServerInfo
function FQosPingServerInfo:get() end



---@class FQosRegionInfo
---@field DisplayName FText
---@field regionId FString
---@field bEnabled boolean
---@field bVisible boolean
---@field bAutoAssignable boolean
---@field bAllowSubspaceBias boolean
---@field SubspaceBiasParams FQosSubspaceComparisonParams
FQosRegionInfo = {}

---@return FQosRegionInfo
function FQosRegionInfo:get() end



---@class FQosSubspaceComparisonParams
---@field MaxNonSubspacePingMs int32
---@field MinSubspacePingMs int32
---@field ConstantMaxToleranceMs int32
---@field ScaledMaxTolerancePct float
FQosSubspaceComparisonParams = {}

---@return FQosSubspaceComparisonParams
function FQosSubspaceComparisonParams:get() end



---@class FRegionQosInstance
---@field Definition FQosRegionInfo
---@field DatacenterOptions TArray<FDatacenterQosInstance>
FRegionQosInstance = {}

---@return FRegionQosInstance
function FRegionQosInstance:get() end



---@class UQosEvaluator : UObject
---@field bInProgress boolean
---@field bCancelOperation boolean
---@field Datacenters TArray<FDatacenterQosInstance>
UQosEvaluator = {}

---@return UQosEvaluator
function UQosEvaluator:get() end



---@class UQosRegionManager : UObject
---@field NumTestsPerRegion int32
---@field PingTimeout float
---@field bEnableSubspaceBiasOrder boolean
---@field SubspaceDelimiter FString
---@field RegionDefinitions TArray<FQosRegionInfo>
---@field DatacenterDefinitions TArray<FQosDatacenterInfo>
---@field LastCheckTimestamp FDateTime
---@field Evaluator UQosEvaluator
---@field QosEvalResult EQosCompletionResult
---@field RegionOptions TArray<FRegionQosInstance>
---@field ForceRegionId FString
---@field bRegionForcedViaCommandline boolean
---@field SelectedRegionId FString
UQosRegionManager = {}

---@return UQosRegionManager
function UQosRegionManager:get() end



