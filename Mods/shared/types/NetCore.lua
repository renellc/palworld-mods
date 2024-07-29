---@meta

---@class FEscalationState : FStateStruct
---@field bLogEscalate boolean
---@field bDormant boolean
---@field CooloffTime int16
---@field AutoEscalateTime int16
---@field HighestTimePeriod int8
---@field AllTimePeriods TArray<int8>
FEscalationState = {}

---@return FEscalationState
function FEscalationState:get() end



---@class FFastArraySerializer
---@field ArrayReplicationKey int32
---@field DeltaFlags EFastArraySerializerDeltaFlags
FFastArraySerializer = {}

---@return FFastArraySerializer
function FFastArraySerializer:get() end



---@class FFastArraySerializerItem
---@field ReplicationID int32
---@field ReplicationKey int32
---@field MostRecentArrayReplicationKey int32
FFastArraySerializerItem = {}

---@return FFastArraySerializerItem
function FFastArraySerializerItem:get() end



---@class FNetAnalyticsDataConfig
---@field DataName FName
---@field bEnabled boolean
FNetAnalyticsDataConfig = {}

---@return FNetAnalyticsDataConfig
function FNetAnalyticsDataConfig:get() end



---@class FNetFaultState : FEscalationState
---@field bCloseConnection boolean
---@field EscalateQuotaFaultsPerPeriod int16
---@field EscalateQuotaFaultPercentPerPeriod int8
---@field DescalateQuotaFaultsPerPeriod int16
---@field DescalateQuotaFaultPercentPerPeriod int8
---@field EscalateQuotaTimePeriod int8
FNetFaultState = {}

---@return FNetFaultState
function FNetFaultState:get() end



---@class FStateStruct
---@field StateName FString
FStateStruct = {}

---@return FStateStruct
function FStateStruct:get() end



---@class UEscalationManagerConfig : UStatePerObjectConfig
---@field EscalationSeverity TArray<FString>
UEscalationManagerConfig = {}

---@return UEscalationManagerConfig
function UEscalationManagerConfig:get() end



---@class UNetAnalyticsAggregatorConfig : UObject
---@field NetAnalyticsData TArray<FNetAnalyticsDataConfig>
UNetAnalyticsAggregatorConfig = {}

---@return UNetAnalyticsAggregatorConfig
function UNetAnalyticsAggregatorConfig:get() end



---@class UStatePerObjectConfig : UObject
---@field PerObjectConfigSection FString
---@field bEnabled boolean
UStatePerObjectConfig = {}

---@return UStatePerObjectConfig
function UStatePerObjectConfig:get() end



