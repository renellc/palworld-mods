---@meta

---@class FPocketpairInventory
---@field Items TArray<FPocketpairInventoryItem>
FPocketpairInventory = {}

---@return FPocketpairInventory
function FPocketpairInventory:get() end



---@class FPocketpairInventoryItem
---@field ItemId int32
---@field Num int32
FPocketpairInventoryItem = {}

---@return FPocketpairInventoryItem
function FPocketpairInventoryItem:get() end



---@class FPocketpairTelemetry
FPocketpairTelemetry = {}

---@return FPocketpairTelemetry
function FPocketpairTelemetry:get() end


---@class FPocketpairTelemetry_Stat
FPocketpairTelemetry_Stat = {}

---@return FPocketpairTelemetry_Stat
function FPocketpairTelemetry_Stat:get() end


---@class FSocialId
FSocialId = {}

---@return FSocialId
function FSocialId:get() end


---@class UCreateSessionAsyncFunction : UBlueprintAsyncActionBase
---@field Completed FCreateSessionAsyncFunctionCompleted
UCreateSessionAsyncFunction = {}

---@return UCreateSessionAsyncFunction
function UCreateSessionAsyncFunction:get() end

---@param Target UPocketpairUserSubsystem
---@param IsDedicatedServer boolean
---@param PublicConnections int32
---@param InviteCode FString
---@param ServerName FString
---@param Desc FString
---@param ServerAddress FString
---@param ServerPort int32
---@param IsPassword boolean
---@param Version FString
---@param ServerType FString
---@param Region FString
---@param Namespace FString
---@return UCreateSessionAsyncFunction
function UCreateSessionAsyncFunction:CreateSessionAsyncFunction(Target, IsDedicatedServer, PublicConnections, InviteCode, ServerName, Desc, ServerAddress, ServerPort, IsPassword, Version, ServerType, Region, Namespace) end


---@class UFindSessionsAsyncFunction : UBlueprintAsyncActionBase
---@field Completed FFindSessionsAsyncFunctionCompleted
UFindSessionsAsyncFunction = {}

---@return UFindSessionsAsyncFunction
function UFindSessionsAsyncFunction:get() end

---@param Target UPocketpairUserSubsystem
---@param IsDedicatedServer boolean
---@param InviteCode FString
---@param ServerType FString
---@param Region FString
---@param LessThanTime int32
---@param WorldGUID FString
---@param Namespace FString
---@return UFindSessionsAsyncFunction
function UFindSessionsAsyncFunction:FindSessionsAsyncFunction(Target, IsDedicatedServer, InviteCode, ServerType, Region, LessThanTime, WorldGUID, Namespace) end


---@class UGDKActivityAsyncFunction : UBlueprintAsyncActionBase
---@field Completed FGDKActivityAsyncFunctionCompleted
UGDKActivityAsyncFunction = {}

---@return UGDKActivityAsyncFunction
function UGDKActivityAsyncFunction:get() end

---@param Target UPocketpairUserSubsystem
---@param ConnectionString FString
---@param MaxPlayerNum int32
---@param CurrentPlayerNum int32
---@return UGDKActivityAsyncFunction
function UGDKActivityAsyncFunction:GDKActivityAsyncFunction(Target, ConnectionString, MaxPlayerNum, CurrentPlayerNum) end


---@class UGDKInviteAsyncFunction : UBlueprintAsyncActionBase
---@field Completed FGDKInviteAsyncFunctionCompleted
UGDKInviteAsyncFunction = {}

---@return UGDKInviteAsyncFunction
function UGDKInviteAsyncFunction:get() end

---@param Target UPocketpairUserSubsystem
---@return UGDKInviteAsyncFunction
function UGDKInviteAsyncFunction:GDKInviteAsyncFunction(Target) end


---@class UHTTPRequestAsyncFunction : UBlueprintAsyncActionBase
---@field Completed FHTTPRequestAsyncFunctionCompleted
UHTTPRequestAsyncFunction = {}

---@return UHTTPRequestAsyncFunction
function UHTTPRequestAsyncFunction:get() end

---@param Target UPocketpairUserSubsystem
---@param URL FString
---@param Verb FString
---@return UHTTPRequestAsyncFunction
function UHTTPRequestAsyncFunction:HTTPRequestAsyncFunction(Target, URL, Verb) end


---@class UJoinSessionAsyncFunction : UBlueprintAsyncActionBase
---@field Completed FJoinSessionAsyncFunctionCompleted
---@field Controller APlayerController
UJoinSessionAsyncFunction = {}

---@return UJoinSessionAsyncFunction
function UJoinSessionAsyncFunction:get() end



---@class ULoginDefaultOnlineSubsystemAsyncFunction : UBlueprintAsyncActionBase
---@field Completed FLoginDefaultOnlineSubsystemAsyncFunctionCompleted
ULoginDefaultOnlineSubsystemAsyncFunction = {}

---@return ULoginDefaultOnlineSubsystemAsyncFunction
function ULoginDefaultOnlineSubsystemAsyncFunction:get() end

---@param Target UPocketpairUserSubsystem
---@return ULoginDefaultOnlineSubsystemAsyncFunction
function ULoginDefaultOnlineSubsystemAsyncFunction:LoginDefaultAsyncFunction(Target) end


---@class ULoginEOSAsyncFunction : UBlueprintAsyncActionBase
---@field Completed FLoginEOSAsyncFunctionCompleted
ULoginEOSAsyncFunction = {}

---@return ULoginEOSAsyncFunction
function ULoginEOSAsyncFunction:get() end

---@param Target UPocketpairUserSubsystem
---@return ULoginEOSAsyncFunction
function ULoginEOSAsyncFunction:LoginEOSAsyncFunction(Target) end


---@class UPingIP : UObject
---@field OnPingComplete FPingIPOnPingComplete
---@field OnPingFailure FPingIPOnPingFailure
UPingIP = {}

---@return UPingIP
function UPingIP:get() end

---@param ipAddress FString
function UPingIP:SendPing(ipAddress) end
function UPingIP:PollThread() end
---@return UPingIP
function UPingIP:ConstructPingObject() end


---@class UPocketpairFriend : UObject
---@field DisplayName FString
UPocketpairFriend = {}

---@return UPocketpairFriend
function UPocketpairFriend:get() end

---@return FUniqueNetIdRepl
function UPocketpairFriend:GetNetId() end


---@class UPocketpairUserInfo : UObject
UPocketpairUserInfo = {}

---@return UPocketpairUserInfo
function UPocketpairUserInfo:get() end

---@return FName
function UPocketpairUserInfo:GetOnlineSubsystemName() end
---@return FString
function UPocketpairUserInfo:GetNickname() end
---@return FUniqueNetIdRepl
function UPocketpairUserInfo:GetNetId() end
---@return FString
function UPocketpairUserInfo:GetDebugString() end


---@class UPocketpairUserSubsystem : UGameInstanceSubsystem
---@field LocalUserInfo UPocketpairUserInfo
UPocketpairUserSubsystem = {}

---@return UPocketpairUserSubsystem
function UPocketpairUserSubsystem:get() end

---@param ID FString
---@param Percent float
function UPocketpairUserSubsystem:UnlockAchievement(ID, Percent) end
---@param InviteCode FString
function UPocketpairUserSubsystem:OnSessionInviteReceived(InviteCode) end
---@return FString
function UPocketpairUserSubsystem:GetTelemetryUserId() end
---@return FString
function UPocketpairUserSubsystem:GetTelemetrySessionId() end
---@param PlayerController APlayerController
---@return FSocialId
function UPocketpairUserSubsystem:GetSocialId(PlayerController) end
---@return FString
function UPocketpairUserSubsystem:GetSaveDataUserId() end
---@param PlayerController APlayerController
---@return int32
function UPocketpairUserSubsystem:GetPlayerNo(PlayerController) end
---@param Address FString
---@return int32
function UPocketpairUserSubsystem:GetPingResultCache(Address) end
---@return UPocketpairUserInfo
function UPocketpairUserSubsystem:GetLocalUserInfo() end
---@return FString
function UPocketpairUserSubsystem:GetInviteCode() end
---@return FName
function UPocketpairUserSubsystem:GetDefaultOnlineSubsystemName() end
---@param Address FString
---@param Ping int32
function UPocketpairUserSubsystem:AddPingResultCache(Address, Ping) end


---@class USanitizeDisplayNameAsyncFunction : UBlueprintAsyncActionBase
---@field Completed FSanitizeDisplayNameAsyncFunctionCompleted
USanitizeDisplayNameAsyncFunction = {}

---@return USanitizeDisplayNameAsyncFunction
function USanitizeDisplayNameAsyncFunction:get() end

---@param Target UPocketpairUserSubsystem
---@param InString FString
---@return USanitizeDisplayNameAsyncFunction
function USanitizeDisplayNameAsyncFunction:SanitizeDisplayNameAsyncFunction(Target, InString) end


---@class USwitchUserUIDefaultOnlineSubsystemAsyncFunction : UBlueprintAsyncActionBase
---@field Completed FSwitchUserUIDefaultOnlineSubsystemAsyncFunctionCompleted
USwitchUserUIDefaultOnlineSubsystemAsyncFunction = {}

---@return USwitchUserUIDefaultOnlineSubsystemAsyncFunction
function USwitchUserUIDefaultOnlineSubsystemAsyncFunction:get() end

---@param Target UPocketpairUserSubsystem
---@return USwitchUserUIDefaultOnlineSubsystemAsyncFunction
function USwitchUserUIDefaultOnlineSubsystemAsyncFunction:SwitchUserUIAsyncFunction(Target) end


