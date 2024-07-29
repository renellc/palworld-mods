---@meta

---@class FEngineServiceAuthDeny
---@field UserName FString
---@field UserToDeny FString
FEngineServiceAuthDeny = {}

---@return FEngineServiceAuthDeny
function FEngineServiceAuthDeny:get() end



---@class FEngineServiceAuthGrant
---@field UserName FString
---@field UserToGrant FString
FEngineServiceAuthGrant = {}

---@return FEngineServiceAuthGrant
function FEngineServiceAuthGrant:get() end



---@class FEngineServiceExecuteCommand
---@field Command FString
---@field UserName FString
FEngineServiceExecuteCommand = {}

---@return FEngineServiceExecuteCommand
function FEngineServiceExecuteCommand:get() end



---@class FEngineServiceNotification
---@field Text FString
---@field TimeSeconds double
FEngineServiceNotification = {}

---@return FEngineServiceNotification
function FEngineServiceNotification:get() end



---@class FEngineServicePing
FEngineServicePing = {}

---@return FEngineServicePing
function FEngineServicePing:get() end


---@class FEngineServicePong
---@field CurrentLevel FString
---@field EngineVersion int32
---@field HasBegunPlay boolean
---@field InstanceId FGuid
---@field InstanceType FString
---@field SessionId FGuid
---@field WorldTimeSeconds float
FEngineServicePong = {}

---@return FEngineServicePong
function FEngineServicePong:get() end



---@class FEngineServiceTerminate
---@field UserName FString
FEngineServiceTerminate = {}

---@return FEngineServiceTerminate
function FEngineServiceTerminate:get() end



