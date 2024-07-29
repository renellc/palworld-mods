---@meta

---@class FOnlinePartyRepDataBase
FOnlinePartyRepDataBase = {}

---@return FOnlinePartyRepDataBase
function FOnlinePartyRepDataBase:get() end


---@class FPartyMemberJoinInProgressData
---@field Request FPartyMemberJoinInProgressRequest
---@field Responses TArray<FPartyMemberJoinInProgressResponse>
FPartyMemberJoinInProgressData = {}

---@return FPartyMemberJoinInProgressData
function FPartyMemberJoinInProgressData:get() end



---@class FPartyMemberJoinInProgressRequest
---@field Target FUniqueNetIdRepl
---@field Time int64
FPartyMemberJoinInProgressRequest = {}

---@return FPartyMemberJoinInProgressRequest
function FPartyMemberJoinInProgressRequest:get() end



---@class FPartyMemberJoinInProgressResponse
---@field Requester FUniqueNetIdRepl
---@field RequestTime int64
---@field ResponseTime int64
---@field DenialReason uint8
FPartyMemberJoinInProgressResponse = {}

---@return FPartyMemberJoinInProgressResponse
function FPartyMemberJoinInProgressResponse:get() end



---@class FPartyMemberPlatformData
---@field Platform FUserPlatform
---@field UniqueId FUniqueNetIdRepl
---@field SessionId FString
FPartyMemberPlatformData = {}

---@return FPartyMemberPlatformData
function FPartyMemberPlatformData:get() end



---@class FPartyMemberRepData : FOnlinePartyRepDataBase
---@field PlatformData FPartyMemberPlatformData
---@field CrossplayPreference ECrossplayPreference
---@field JoinMethod FString
---@field JoinInProgressData FPartyMemberJoinInProgressData
FPartyMemberRepData = {}

---@return FPartyMemberRepData
function FPartyMemberRepData:get() end



---@class FPartyPlatformSessionInfo
---@field SessionType FString
---@field SessionId FString
---@field OwnerPrimaryId FUniqueNetIdRepl
FPartyPlatformSessionInfo = {}

---@return FPartyPlatformSessionInfo
function FPartyPlatformSessionInfo:get() end



---@class FPartyPrivacySettings
---@field PartyType EPartyType
---@field PartyInviteRestriction EPartyInviteRestriction
---@field bOnlyLeaderFriendsCanJoin boolean
FPartyPrivacySettings = {}

---@return FPartyPrivacySettings
function FPartyPrivacySettings:get() end



---@class FPartyRepData : FOnlinePartyRepDataBase
---@field PrivacySettings FPartyPrivacySettings
---@field PlatformSessions TArray<FPartyPlatformSessionInfo>
FPartyRepData = {}

---@return FPartyRepData
function FPartyRepData:get() end



---@class FSocialChatChannelConfig
---@field SocialUser USocialUser
---@field ListenChannels TArray<USocialChatChannel>
FSocialChatChannelConfig = {}

---@return FSocialChatChannelConfig
function FSocialChatChannelConfig:get() end



---@class FSocialPlatformDescription
---@field Name FString
---@field PlatformType FString
---@field OnlineSubsystem FName
---@field SessionType FString
---@field ExternalAccountType FString
---@field CrossplayPool FString
FSocialPlatformDescription = {}

---@return FSocialPlatformDescription
function FSocialPlatformDescription:get() end



---@class FUserPlatform
---@field PlatformDescription FSocialPlatformDescription
FUserPlatform = {}

---@return FUserPlatform
function FUserPlatform:get() end



---@class UChatroom : UObject
---@field CurrentChatRoomId FString
---@field MaxChatRoomRetries int32
---@field NumChatRoomRetries int32
UChatroom = {}

---@return UChatroom
function UChatroom:get() end



---@class UPartyMember : UObject
---@field SocialUser USocialUser
UPartyMember = {}

---@return UPartyMember
function UPartyMember:get() end



---@class USocialChatChannel : UObject
USocialChatChannel = {}

---@return USocialChatChannel
function USocialChatChannel:get() end


---@class USocialChatManager : UObject
---@field DirectChannelsByTargetUser TMap<TWeakObjectPtr<USocialUser>, USocialPrivateMessageChannel>
---@field ChatRoomsById TMap<FString, USocialChatRoom>
---@field ReadOnlyChannelsByDisplayName TMap<FString, USocialReadOnlyChatChannel>
---@field bEnableChatSlashCommands boolean
---@field GroupChannels TMap<FUniqueNetIdRepl, USocialGroupChannel>
USocialChatManager = {}

---@return USocialChatManager
function USocialChatManager:get() end



---@class USocialChatRoom : USocialChatChannel
USocialChatRoom = {}

---@return USocialChatRoom
function USocialChatRoom:get() end


---@class USocialDebugTools : UObject
USocialDebugTools = {}

---@return USocialDebugTools
function USocialDebugTools:get() end


---@class USocialGroupChannel : UObject
---@field SocialUser USocialUser
---@field GroupId FUniqueNetIdRepl
---@field DisplayName FText
---@field Members TArray<USocialUser>
USocialGroupChannel = {}

---@return USocialGroupChannel
function USocialGroupChannel:get() end



---@class USocialManager : UObject
---@field SocialToolkits TArray<USocialToolkit>
---@field SocialDebugTools USocialDebugTools
USocialManager = {}

---@return USocialManager
function USocialManager:get() end



---@class USocialParty : UObject
---@field ReservationBeaconClientClass TSubclassOf<APartyBeaconClient>
---@field SpectatorBeaconClientClass TSubclassOf<ASpectatorBeaconClient>
---@field OwningLocalUserId FUniqueNetIdRepl
---@field CurrentLeaderId FUniqueNetIdRepl
---@field PartyMembersById TMap<FUniqueNetIdRepl, UPartyMember>
---@field bEnableAutomaticPartyRejoin boolean
---@field PlatformUserInviteCooldown double
---@field PrimaryUserInviteCooldown double
---@field ReservationBeaconClient TWeakObjectPtr<APartyBeaconClient>
---@field SpectatorBeaconClient TWeakObjectPtr<ASpectatorBeaconClient>
---@field JoinInProgressTimerRate float
---@field JoinInProgressRequestTimeout int32
---@field JoinInProgressResponseTimeout int32
USocialParty = {}

---@return USocialParty
function USocialParty:get() end



---@class USocialPartyChatRoom : USocialChatRoom
USocialPartyChatRoom = {}

---@return USocialPartyChatRoom
function USocialPartyChatRoom:get() end


---@class USocialPrivateMessageChannel : USocialChatChannel
---@field TargetUser USocialUser
USocialPrivateMessageChannel = {}

---@return USocialPrivateMessageChannel
function USocialPrivateMessageChannel:get() end



---@class USocialReadOnlyChatChannel : USocialChatChannel
USocialReadOnlyChatChannel = {}

---@return USocialReadOnlyChatChannel
function USocialReadOnlyChatChannel:get() end


---@class USocialSettings : UObject
---@field OssNamesWithEnvironmentIdPrefix TArray<FName>
---@field DefaultMaxPartySize int32
---@field bPreferPlatformInvites boolean
---@field bMustSendPrimaryInvites boolean
---@field bLeavePartyOnDisconnect boolean
---@field bSetDesiredPrivacyOnLocalPlayerBecomesLeader boolean
---@field UserListAutoUpdateRate float
---@field MinNicknameLength int32
---@field MaxNicknameLength int32
---@field SocialPlatformDescriptions TArray<FSocialPlatformDescription>
USocialSettings = {}

---@return USocialSettings
function USocialSettings:get() end



---@class USocialToolkit : UObject
---@field LocalUser USocialUser
---@field AllUsers TArray<USocialUser>
---@field LocalPlayerOwner TWeakObjectPtr<ULocalPlayer>
---@field SocialChatManager USocialChatManager
USocialToolkit = {}

---@return USocialToolkit
function USocialToolkit:get() end



---@class USocialUser : UObject
USocialUser = {}

---@return USocialUser
function USocialUser:get() end


