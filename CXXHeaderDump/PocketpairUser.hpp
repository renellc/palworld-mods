#ifndef UE4SS_SDK_PocketpairUser_HPP
#define UE4SS_SDK_PocketpairUser_HPP

#include "PocketpairUser_enums.hpp"

struct FPocketpairInventory
{
    TArray<FPocketpairInventoryItem> Items;                                           // 0x0000 (size: 0x10)

}; // Size: 0x18

struct FPocketpairInventoryItem
{
    int32 ItemId;                                                                     // 0x0008 (size: 0x4)
    int32 Num;                                                                        // 0x000C (size: 0x4)

}; // Size: 0x10

struct FPocketpairTelemetry
{
}; // Size: 0x40

struct FPocketpairTelemetry_Stat
{
}; // Size: 0xC

struct FSocialId
{
}; // Size: 0x4

class UCreateSessionAsyncFunction : public UBlueprintAsyncActionBase
{
    FCreateSessionAsyncFunctionCompleted Completed;                                   // 0x0030 (size: 0x10)
    void AsyncCompletedCreateSessionFunction(bool IsSuccess, FString ErrorStr);

    class UCreateSessionAsyncFunction* CreateSessionAsyncFunction(class UPocketpairUserSubsystem* Target, bool IsDedicatedServer, int32 PublicConnections, FString InviteCode, FString ServerName, FString Desc, FString ServerAddress, int32 ServerPort, bool IsPassword, FString Version, FString ServerType, FString Region, FString Namespace);
}; // Size: 0xE0

class UFindSessionsAsyncFunction : public UBlueprintAsyncActionBase
{
    FFindSessionsAsyncFunctionCompleted Completed;                                    // 0x0030 (size: 0x10)
    void AsyncCompletedFindSessionsFunction(bool IsSuccess, const TArray<FBlueprintSessionResult>& Results, FString ErrorStr);

    class UFindSessionsAsyncFunction* FindSessionsAsyncFunction(class UPocketpairUserSubsystem* Target, bool IsDedicatedServer, const FString InviteCode, const FString ServerType, const FString Region, const int32 LessThanTime, const FString WorldGUID, const FString Namespace);
}; // Size: 0xD0

class UGDKActivityAsyncFunction : public UBlueprintAsyncActionBase
{
    FGDKActivityAsyncFunctionCompleted Completed;                                     // 0x0030 (size: 0x10)
    void GDKActivityAsyncFunction(const FString ResponseBody, bool bResponseOK, int32 ResponseCode);

    class UGDKActivityAsyncFunction* GDKActivityAsyncFunction(class UPocketpairUserSubsystem* Target, FString ConnectionString, int32 MaxPlayerNum, int32 CurrentPlayerNum);
}; // Size: 0x68

class UGDKInviteAsyncFunction : public UBlueprintAsyncActionBase
{
    FGDKInviteAsyncFunctionCompleted Completed;                                       // 0x0030 (size: 0x10)
    void GDKInviteAsyncFunction(const FString InviteCode);

    class UGDKInviteAsyncFunction* GDKInviteAsyncFunction(class UPocketpairUserSubsystem* Target);
}; // Size: 0x48

class UHTTPRequestAsyncFunction : public UBlueprintAsyncActionBase
{
    FHTTPRequestAsyncFunctionCompleted Completed;                                     // 0x0030 (size: 0x10)
    void AsyncHTTPRequestFunction(const FString ResponseBody, bool bResponseOK, int32 ResponseCode);

    class UHTTPRequestAsyncFunction* HTTPRequestAsyncFunction(class UPocketpairUserSubsystem* Target, FString URL, FString Verb);
}; // Size: 0xE0

class UJoinSessionAsyncFunction : public UBlueprintAsyncActionBase
{
    FJoinSessionAsyncFunctionCompleted Completed;                                     // 0x0030 (size: 0x10)
    void AsyncCompletedJoinSessionFunction(bool IsSuccess, JoinSessionResultType Type);
    class APlayerController* Controller;                                              // 0x0178 (size: 0x8)

}; // Size: 0x180

class ULoginDefaultOnlineSubsystemAsyncFunction : public UBlueprintAsyncActionBase
{
    FLoginDefaultOnlineSubsystemAsyncFunctionCompleted Completed;                     // 0x0030 (size: 0x10)
    void AsyncCompletedLoginFunction(const class UPocketpairUserInfo* UserInfo, bool bSuccess, FString ErrorStr);

    class ULoginDefaultOnlineSubsystemAsyncFunction* LoginDefaultAsyncFunction(class UPocketpairUserSubsystem* Target);
}; // Size: 0x50

class ULoginEOSAsyncFunction : public UBlueprintAsyncActionBase
{
    FLoginEOSAsyncFunctionCompleted Completed;                                        // 0x0030 (size: 0x10)
    void AsyncCompletedLoginEOSFunction(const class UPocketpairUserInfo* UserInfo, bool bSuccess, FString ErrorStr);

    class ULoginEOSAsyncFunction* LoginEOSAsyncFunction(class UPocketpairUserSubsystem* Target);
}; // Size: 0x50

class UPingIP : public UObject
{
    FPingIPOnPingComplete OnPingComplete;                                             // 0x0050 (size: 0x10)
    void OnPingComplete(class UPingIP* PingOperation, FString HostName, int32 TimeMS);
    FPingIPOnPingFailure OnPingFailure;                                               // 0x0060 (size: 0x10)
    void OnPingFailure(class UPingIP* PingOperation, FString HostName);

    void SendPing(FString ipAddress);
    void PollThread();
    class UPingIP* ConstructPingObject();
}; // Size: 0x70

class UPocketpairFriend : public UObject
{
    FString DisplayName;                                                              // 0x0028 (size: 0x10)

    FUniqueNetIdRepl GetNetId();
}; // Size: 0x68

class UPocketpairUserInfo : public UObject
{

    FName GetOnlineSubsystemName();
    FString GetNickname();
    FUniqueNetIdRepl GetNetId();
    FString GetDebugString();
}; // Size: 0x38

class UPocketpairUserSubsystem : public UGameInstanceSubsystem
{
    class UPocketpairUserInfo* LocalUserInfo;                                         // 0x0068 (size: 0x8)

    void UnlockAchievement(FString ID, float Percent);
    void OnSessionInviteReceived(FString InviteCode);
    FString GetTelemetryUserId();
    FString GetTelemetrySessionId();
    FSocialId GetSocialId(const class APlayerController* PlayerController);
    FString GetSaveDataUserId();
    int32 GetPlayerNo(const class APlayerController* PlayerController);
    int32 GetPingResultCache(FString Address);
    class UPocketpairUserInfo* GetLocalUserInfo();
    FString GetInviteCode();
    FName GetDefaultOnlineSubsystemName();
    void AddPingResultCache(FString Address, int32 Ping);
}; // Size: 0x298

class USanitizeDisplayNameAsyncFunction : public UBlueprintAsyncActionBase
{
    FSanitizeDisplayNameAsyncFunctionCompleted Completed;                             // 0x0030 (size: 0x10)
    void SanitizeDisplayNameAsyncFunction(bool IsSuccess, FString OutString);

    class USanitizeDisplayNameAsyncFunction* SanitizeDisplayNameAsyncFunction(class UPocketpairUserSubsystem* Target, FString InString);
}; // Size: 0x58

class USwitchUserUIDefaultOnlineSubsystemAsyncFunction : public UBlueprintAsyncActionBase
{
    FSwitchUserUIDefaultOnlineSubsystemAsyncFunctionCompleted Completed;              // 0x0030 (size: 0x10)
    void AsyncCompletedSwitchUserUIFunction(const class UPocketpairUserInfo* UserInfo, bool bSuccess, FString ErrorStr);

    class USwitchUserUIDefaultOnlineSubsystemAsyncFunction* SwitchUserUIAsyncFunction(class UPocketpairUserSubsystem* Target);
}; // Size: 0x50

#endif
