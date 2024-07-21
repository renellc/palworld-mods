#ifndef UE4SS_SDK_Party_HPP
#define UE4SS_SDK_Party_HPP

#include "Party_enums.hpp"

struct FOnlinePartyRepDataBase
{
}; // Size: 0x18

struct FPartyMemberJoinInProgressData
{
    FPartyMemberJoinInProgressRequest Request;                                        // 0x0000 (size: 0x38)
    TArray<FPartyMemberJoinInProgressResponse> Responses;                             // 0x0038 (size: 0x10)

}; // Size: 0x48

struct FPartyMemberJoinInProgressRequest
{
    FUniqueNetIdRepl Target;                                                          // 0x0000 (size: 0x30)
    int64 Time;                                                                       // 0x0030 (size: 0x8)

}; // Size: 0x38

struct FPartyMemberJoinInProgressResponse
{
    FUniqueNetIdRepl Requester;                                                       // 0x0000 (size: 0x30)
    int64 RequestTime;                                                                // 0x0030 (size: 0x8)
    int64 ResponseTime;                                                               // 0x0038 (size: 0x8)
    uint8 DenialReason;                                                               // 0x0040 (size: 0x1)

}; // Size: 0x48

struct FPartyMemberPlatformData
{
    FUserPlatform Platform;                                                           // 0x0000 (size: 0x58)
    FUniqueNetIdRepl UniqueId;                                                        // 0x0058 (size: 0x30)
    FString SessionId;                                                                // 0x0088 (size: 0x10)

}; // Size: 0x98

struct FPartyMemberRepData : public FOnlinePartyRepDataBase
{
    FPartyMemberPlatformData PlatformData;                                            // 0x0020 (size: 0x98)
    ECrossplayPreference CrossplayPreference;                                         // 0x0148 (size: 0x1)
    FString JoinMethod;                                                               // 0x0180 (size: 0x10)
    FPartyMemberJoinInProgressData JoinInProgressData;                                // 0x01C0 (size: 0x48)

}; // Size: 0x268

struct FPartyPlatformSessionInfo
{
    FString SessionType;                                                              // 0x0000 (size: 0x10)
    FString SessionId;                                                                // 0x0010 (size: 0x10)
    FUniqueNetIdRepl OwnerPrimaryId;                                                  // 0x0020 (size: 0x30)

}; // Size: 0x50

struct FPartyPrivacySettings
{
    EPartyType PartyType;                                                             // 0x0000 (size: 0x1)
    EPartyInviteRestriction PartyInviteRestriction;                                   // 0x0001 (size: 0x1)
    bool bOnlyLeaderFriendsCanJoin;                                                   // 0x0002 (size: 0x1)

}; // Size: 0x3

struct FPartyRepData : public FOnlinePartyRepDataBase
{
    FPartyPrivacySettings PrivacySettings;                                            // 0x0020 (size: 0x3)
    TArray<FPartyPlatformSessionInfo> PlatformSessions;                               // 0x0058 (size: 0x10)

}; // Size: 0x80

struct FSocialChatChannelConfig
{
    class USocialUser* SocialUser;                                                    // 0x0000 (size: 0x8)
    TArray<class USocialChatChannel*> ListenChannels;                                 // 0x0018 (size: 0x10)

}; // Size: 0x40

struct FSocialPlatformDescription
{
    FString Name;                                                                     // 0x0000 (size: 0x10)
    FString PlatformType;                                                             // 0x0010 (size: 0x10)
    FName OnlineSubsystem;                                                            // 0x0020 (size: 0x8)
    FString SessionType;                                                              // 0x0028 (size: 0x10)
    FString ExternalAccountType;                                                      // 0x0038 (size: 0x10)
    FString CrossplayPool;                                                            // 0x0048 (size: 0x10)

}; // Size: 0x58

struct FUserPlatform
{
    FSocialPlatformDescription PlatformDescription;                                   // 0x0000 (size: 0x58)

}; // Size: 0x58

class UChatroom : public UObject
{
    FString CurrentChatRoomId;                                                        // 0x0028 (size: 0x10)
    int32 MaxChatRoomRetries;                                                         // 0x0038 (size: 0x4)
    int32 NumChatRoomRetries;                                                         // 0x003C (size: 0x4)

}; // Size: 0x58

class UPartyMember : public UObject
{
    class USocialUser* SocialUser;                                                    // 0x0070 (size: 0x8)

}; // Size: 0x110

class USocialChatChannel : public UObject
{
}; // Size: 0xE8

class USocialChatManager : public UObject
{
    TMap<class TWeakObjectPtr<USocialUser>, class USocialPrivateMessageChannel*> DirectChannelsByTargetUser; // 0x0078 (size: 0x50)
    TMap<class FString, class USocialChatRoom*> ChatRoomsById;                        // 0x00C8 (size: 0x50)
    TMap<class FString, class USocialReadOnlyChatChannel*> ReadOnlyChannelsByDisplayName; // 0x0118 (size: 0x50)
    bool bEnableChatSlashCommands;                                                    // 0x0168 (size: 0x1)
    TMap<class FUniqueNetIdRepl, class USocialGroupChannel*> GroupChannels;           // 0x0170 (size: 0x50)

}; // Size: 0x220

class USocialChatRoom : public USocialChatChannel
{
}; // Size: 0xF8

class USocialDebugTools : public UObject
{
}; // Size: 0x88

class USocialGroupChannel : public UObject
{
    class USocialUser* SocialUser;                                                    // 0x0028 (size: 0x8)
    FUniqueNetIdRepl GroupId;                                                         // 0x0030 (size: 0x30)
    FText DisplayName;                                                                // 0x0060 (size: 0x18)
    TArray<class USocialUser*> Members;                                               // 0x0078 (size: 0x10)

}; // Size: 0x98

class USocialManager : public UObject
{
    TArray<class USocialToolkit*> SocialToolkits;                                     // 0x0050 (size: 0x10)
    class USocialDebugTools* SocialDebugTools;                                        // 0x0060 (size: 0x8)

}; // Size: 0x1A8

class USocialParty : public UObject
{
    TSubclassOf<class APartyBeaconClient> ReservationBeaconClientClass;               // 0x0060 (size: 0x8)
    TSubclassOf<class ASpectatorBeaconClient> SpectatorBeaconClientClass;             // 0x0068 (size: 0x8)
    FUniqueNetIdRepl OwningLocalUserId;                                               // 0x0080 (size: 0x30)
    FUniqueNetIdRepl CurrentLeaderId;                                                 // 0x00B0 (size: 0x30)
    TMap<class FUniqueNetIdRepl, class UPartyMember*> PartyMembersById;               // 0x00E0 (size: 0x50)
    bool bEnableAutomaticPartyRejoin;                                                 // 0x0130 (size: 0x1)
    double PlatformUserInviteCooldown;                                                // 0x0188 (size: 0x8)
    double PrimaryUserInviteCooldown;                                                 // 0x0190 (size: 0x8)
    TWeakObjectPtr<class APartyBeaconClient> ReservationBeaconClient;                 // 0x020C (size: 0x8)
    TWeakObjectPtr<class ASpectatorBeaconClient> SpectatorBeaconClient;               // 0x021C (size: 0x8)
    float JoinInProgressTimerRate;                                                    // 0x0250 (size: 0x4)
    int32 JoinInProgressRequestTimeout;                                               // 0x0254 (size: 0x4)
    int32 JoinInProgressResponseTimeout;                                              // 0x0258 (size: 0x4)

}; // Size: 0x380

class USocialPartyChatRoom : public USocialChatRoom
{
}; // Size: 0xF8

class USocialPrivateMessageChannel : public USocialChatChannel
{
    class USocialUser* TargetUser;                                                    // 0x00E8 (size: 0x8)

}; // Size: 0xF0

class USocialReadOnlyChatChannel : public USocialChatChannel
{
}; // Size: 0xE8

class USocialSettings : public UObject
{
    TArray<FName> OssNamesWithEnvironmentIdPrefix;                                    // 0x0028 (size: 0x10)
    int32 DefaultMaxPartySize;                                                        // 0x0038 (size: 0x4)
    bool bPreferPlatformInvites;                                                      // 0x003C (size: 0x1)
    bool bMustSendPrimaryInvites;                                                     // 0x003D (size: 0x1)
    bool bLeavePartyOnDisconnect;                                                     // 0x003E (size: 0x1)
    bool bSetDesiredPrivacyOnLocalPlayerBecomesLeader;                                // 0x003F (size: 0x1)
    float UserListAutoUpdateRate;                                                     // 0x0040 (size: 0x4)
    int32 MinNicknameLength;                                                          // 0x0044 (size: 0x4)
    int32 MaxNicknameLength;                                                          // 0x0048 (size: 0x4)
    TArray<FSocialPlatformDescription> SocialPlatformDescriptions;                    // 0x0050 (size: 0x10)

}; // Size: 0x60

class USocialToolkit : public UObject
{
    class USocialUser* LocalUser;                                                     // 0x0068 (size: 0x8)
    TArray<class USocialUser*> AllUsers;                                              // 0x0070 (size: 0x10)
    TWeakObjectPtr<class ULocalPlayer> LocalPlayerOwner;                              // 0x00D0 (size: 0x8)
    class USocialChatManager* SocialChatManager;                                      // 0x00D8 (size: 0x8)

}; // Size: 0x2A8

class USocialUser : public UObject
{
}; // Size: 0x1C0

#endif
