---@meta

---@class FSessionServiceLog
---@field Category FName
---@field Data FString
---@field InstanceId FGuid
---@field TimeSeconds double
---@field Verbosity uint8
FSessionServiceLog = {}

---@return FSessionServiceLog
function FSessionServiceLog:get() end



---@class FSessionServiceLogSubscribe
FSessionServiceLogSubscribe = {}

---@return FSessionServiceLogSubscribe
function FSessionServiceLogSubscribe:get() end


---@class FSessionServiceLogUnsubscribe
FSessionServiceLogUnsubscribe = {}

---@return FSessionServiceLogUnsubscribe
function FSessionServiceLogUnsubscribe:get() end


---@class FSessionServicePing
---@field UserName FString
FSessionServicePing = {}

---@return FSessionServicePing
function FSessionServicePing:get() end



---@class FSessionServicePong
---@field Authorized boolean
---@field BuildDate FString
---@field DeviceName FString
---@field InstanceId FGuid
---@field InstanceName FString
---@field PlatformName FString
---@field SessionId FGuid
---@field SessionName FString
---@field SessionOwner FString
---@field Standalone boolean
FSessionServicePong = {}

---@return FSessionServicePong
function FSessionServicePong:get() end



