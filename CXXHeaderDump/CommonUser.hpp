#ifndef UE4SS_SDK_CommonUser_HPP
#define UE4SS_SDK_CommonUser_HPP

#include "CommonUser_enums.hpp"

struct FCommonUserInitializeParams
{
    int32 LocalPlayerIndex;                                                           // 0x0000 (size: 0x4)
    int32 ControllerId;                                                               // 0x0004 (size: 0x4)
    FInputDeviceId PrimaryInputDevice;                                                // 0x0008 (size: 0x4)
    FPlatformUserId PlatformUser;                                                     // 0x000C (size: 0x4)
    ECommonUserPrivilege RequestedPrivilege;                                          // 0x0010 (size: 0x1)
    ECommonUserOnlineContext OnlineContext;                                           // 0x0011 (size: 0x1)
    bool bCanCreateNewLocalPlayer;                                                    // 0x0012 (size: 0x1)
    bool bCanUseGuestLogin;                                                           // 0x0013 (size: 0x1)
    bool bSuppressLoginErrors;                                                        // 0x0014 (size: 0x1)
    FCommonUserInitializeParamsOnUserInitializeComplete OnUserInitializeComplete;     // 0x0018 (size: 0x10)
    void CommonUserOnInitializeComplete(const class UCommonUserInfo* UserInfo, bool bSuccess, FText Error, ECommonUserPrivilege RequestedPrivilege, ECommonUserOnlineContext OnlineContext);

}; // Size: 0x28

struct FOnlineResultInformation
{
    bool bWasSuccessful;                                                              // 0x0000 (size: 0x1)
    FString ErrorId;                                                                  // 0x0008 (size: 0x10)
    FText ErrorText;                                                                  // 0x0018 (size: 0x18)

}; // Size: 0x30

class UAsyncAction_CommonUserInitialize : public UCancellableAsyncAction
{
    FAsyncAction_CommonUserInitializeOnInitializationComplete OnInitializationComplete; // 0x0030 (size: 0x10)
    void CommonUserOnInitializeCompleteMulticast(const class UCommonUserInfo* UserInfo, bool bSuccess, FText Error, ECommonUserPrivilege RequestedPrivilege, ECommonUserOnlineContext OnlineContext);

    class UAsyncAction_CommonUserInitialize* LoginForOnlinePlay(class UCommonUserSubsystem* Target, int32 LocalPlayerIndex);
    class UAsyncAction_CommonUserInitialize* InitializeForLocalPlay(class UCommonUserSubsystem* Target, int32 LocalPlayerIndex, FInputDeviceId PrimaryInputDevice, bool bCanUseGuestLogin);
    void HandleInitializationComplete(const class UCommonUserInfo* UserInfo, bool bSuccess, FText Error, ECommonUserPrivilege RequestedPrivilege, ECommonUserOnlineContext OnlineContext);
}; // Size: 0x70

class UCommonSessionSubsystem : public UGameInstanceSubsystem
{
    FCommonSessionSubsystemK2_OnUserRequestedSessionEvent K2_OnUserRequestedSessionEvent; // 0x0048 (size: 0x10)
    void CommonSessionOnUserRequestedSession_Dynamic(const FPlatformUserId& LocalPlatformUserId, class UCommonSession_SearchResult* RequestedSession, const FOnlineResultInformation& RequestedSessionResult);
    FCommonSessionSubsystemK2_OnJoinSessionCompleteEvent K2_OnJoinSessionCompleteEvent; // 0x0070 (size: 0x10)
    void CommonSessionOnJoinSessionComplete_Dynamic(const FOnlineResultInformation& Result);
    FCommonSessionSubsystemK2_OnCreateSessionCompleteEvent K2_OnCreateSessionCompleteEvent; // 0x0098 (size: 0x10)
    void CommonSessionOnCreateSessionComplete_Dynamic(const FOnlineResultInformation& Result);

    void QuickPlaySession(class APlayerController* JoiningOrHostingPlayer, class UCommonSession_HostSessionRequest* Request);
    void JoinSession(class APlayerController* JoiningPlayer, class UCommonSession_SearchResult* Request);
    void HostSession(class APlayerController* HostingPlayer, class UCommonSession_HostSessionRequest* Request);
    void FindSessions(class APlayerController* SearchingPlayer, class UCommonSession_SearchSessionRequest* Request);
    class UCommonSession_SearchSessionRequest* CreateOnlineSearchSessionRequest();
    class UCommonSession_HostSessionRequest* CreateOnlineHostSessionRequest();
    void CleanUpSessions();
}; // Size: 0xE0

class UCommonSession_HostSessionRequest : public UObject
{
    ECommonSessionOnlineMode OnlineMode;                                              // 0x0028 (size: 0x1)
    bool bUseLobbies;                                                                 // 0x0029 (size: 0x1)
    FString ModeNameForAdvertisement;                                                 // 0x0030 (size: 0x10)
    FPrimaryAssetId MapID;                                                            // 0x0040 (size: 0x10)
    TSoftObjectPtr<UWorld> Map;                                                       // 0x0050 (size: 0x30)
    TMap<class FString, class FString> ExtraArgs;                                     // 0x0080 (size: 0x50)
    int32 MaxPlayerCount;                                                             // 0x00D0 (size: 0x4)

}; // Size: 0xD8

class UCommonSession_SearchResult : public UObject
{

    void GetStringSetting(FName Key, FString& Value, bool& bFoundValue);
    int32 GetPingInMs();
    int32 GetNumOpenPublicConnections();
    int32 GetNumOpenPrivateConnections();
    int32 GetMaxPublicConnections();
    void GetIntSetting(FName Key, int32& Value, bool& bFoundValue);
    FString GetDescription();
}; // Size: 0x148

class UCommonSession_SearchSessionRequest : public UObject
{
    ECommonSessionOnlineMode OnlineMode;                                              // 0x0028 (size: 0x1)
    bool bUseLobbies;                                                                 // 0x0029 (size: 0x1)
    TArray<class UCommonSession_SearchResult*> Results;                               // 0x0030 (size: 0x10)
    FCommonSession_SearchSessionRequestK2_OnSearchFinished K2_OnSearchFinished;       // 0x0058 (size: 0x10)
    void CommonSession_FindSessionsFinishedDynamic(bool bSucceeded, FText ErrorMessage);

}; // Size: 0x68

class UCommonUserInfo : public UObject
{
    FInputDeviceId PrimaryInputDevice;                                                // 0x0028 (size: 0x4)
    FPlatformUserId PlatformUser;                                                     // 0x002C (size: 0x4)
    int32 LocalPlayerIndex;                                                           // 0x0030 (size: 0x4)
    bool bCanBeGuest;                                                                 // 0x0034 (size: 0x1)
    bool bIsGuest;                                                                    // 0x0035 (size: 0x1)
    ECommonUserInitializationState InitializationState;                               // 0x0036 (size: 0x1)

    ECommonUserAvailability GetPrivilegeAvailability(ECommonUserPrivilege Privilege);
    FString GetNickname();
    FUniqueNetIdRepl GetNetId(ECommonUserOnlineContext Context);
    FString GetDebugString();
    ECommonUserPrivilegeResult GetCachedPrivilegeResult(ECommonUserPrivilege Privilege, ECommonUserOnlineContext Context);
}; // Size: 0x88

class UCommonUserSubsystem : public UGameInstanceSubsystem
{
    FCommonUserSubsystemOnUserInitializeComplete OnUserInitializeComplete;            // 0x0030 (size: 0x10)
    void CommonUserOnInitializeCompleteMulticast(const class UCommonUserInfo* UserInfo, bool bSuccess, FText Error, ECommonUserPrivilege RequestedPrivilege, ECommonUserOnlineContext OnlineContext);
    FCommonUserSubsystemOnHandleSystemMessage OnHandleSystemMessage;                  // 0x0040 (size: 0x10)
    void CommonUserHandleSystemMessageDelegate(FGameplayTag MessageType, FText TitleText, FText BodyText);
    FCommonUserSubsystemOnUserPrivilegeChanged OnUserPrivilegeChanged;                // 0x0050 (size: 0x10)
    void CommonUserAvailabilityChangedDelegate(const class UCommonUserInfo* UserInfo, ECommonUserPrivilege Privilege, ECommonUserAvailability OldAvailability, ECommonUserAvailability NewAvailability);
    TMap<int32, UCommonUserInfo*> LocalUserInfos;                                     // 0x00D0 (size: 0x50)

    bool TryToLoginForOnlinePlay(int32 LocalPlayerIndex);
    bool TryToInitializeUser(FCommonUserInitializeParams Params);
    bool TryToInitializeForLocalPlay(int32 LocalPlayerIndex, FInputDeviceId PrimaryInputDevice, bool bCanUseGuestLogin);
    bool ShouldWaitForStartInput();
    void SetMaxLocalPlayers(int32 InMaxLocalPLayers);
    void SendSystemMessage(FGameplayTag MessageType, FText TitleText, FText BodyText);
    void ResetUserState();
    void ListenForLoginKeyInput(TArray<FKey> AnyUserKeys, TArray<FKey> NewUserKeys, FCommonUserInitializeParams Params);
    bool HasTraitTag(const FGameplayTag TraitTag);
    class UCommonUserInfo* GetUserInfoForUniqueNetId(const FUniqueNetIdRepl& NetId);
    class UCommonUserInfo* GetUserInfoForPlatformUserIndex(int32 PlatformUserIndex);
    class UCommonUserInfo* GetUserInfoForPlatformUser(FPlatformUserId PlatformUser);
    class UCommonUserInfo* GetUserInfoForLocalPlayerIndex(int32 LocalPlayerIndex);
    class UCommonUserInfo* GetUserInfoForInputDevice(FInputDeviceId InputDevice);
    class UCommonUserInfo* GetUserInfoForControllerId(int32 ControllerId);
    int32 GetNumLocalPlayers();
    int32 GetMaxLocalPlayers();
    ECommonUserInitializationState GetLocalPlayerInitializationState(int32 LocalPlayerIndex);
    bool CancelUserInitialization(int32 LocalPlayerIndex);
}; // Size: 0x158

#endif
