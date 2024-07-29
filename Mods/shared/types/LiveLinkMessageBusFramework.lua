---@meta

---@class FLiveLinkClearSubject
---@field SubjectName FName
FLiveLinkClearSubject = {}

---@return FLiveLinkClearSubject
function FLiveLinkClearSubject:get() end



---@class FLiveLinkConnectMessage
---@field LiveLinkVersion int32
FLiveLinkConnectMessage = {}

---@return FLiveLinkConnectMessage
function FLiveLinkConnectMessage:get() end



---@class FLiveLinkHeartbeatMessage
FLiveLinkHeartbeatMessage = {}

---@return FLiveLinkHeartbeatMessage
function FLiveLinkHeartbeatMessage:get() end


---@class FLiveLinkPingMessage
---@field PollRequest FGuid
---@field LiveLinkVersion int32
FLiveLinkPingMessage = {}

---@return FLiveLinkPingMessage
function FLiveLinkPingMessage:get() end



---@class FLiveLinkPongMessage
---@field ProviderName FString
---@field MachineName FString
---@field PollRequest FGuid
---@field LiveLinkVersion int32
---@field CreationPlatformTime double
FLiveLinkPongMessage = {}

---@return FLiveLinkPongMessage
function FLiveLinkPongMessage:get() end



---@class FLiveLinkSubjectDataMessage
---@field RefSkeleton FLiveLinkRefSkeleton
---@field SubjectName FName
FLiveLinkSubjectDataMessage = {}

---@return FLiveLinkSubjectDataMessage
function FLiveLinkSubjectDataMessage:get() end



---@class FLiveLinkSubjectFrameMessage
---@field SubjectName FName
---@field Transforms TArray<FTransform>
---@field Curves TArray<FLiveLinkCurveElement>
---@field MetaData FLiveLinkMetaData
---@field Time double
FLiveLinkSubjectFrameMessage = {}

---@return FLiveLinkSubjectFrameMessage
function FLiveLinkSubjectFrameMessage:get() end



