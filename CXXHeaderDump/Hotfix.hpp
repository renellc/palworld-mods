#ifndef UE4SS_SDK_Hotfix_HPP
#define UE4SS_SDK_Hotfix_HPP

#include "Hotfix_enums.hpp"

struct FUpdateContextDefinition
{
    FString Name;                                                                     // 0x0000 (size: 0x10)
    bool bEnabled;                                                                    // 0x0010 (size: 0x1)
    bool bCheckAvailabilityOnly;                                                      // 0x0011 (size: 0x1)
    bool bPatchCheckEnabled;                                                          // 0x0012 (size: 0x1)
    bool bPlatformEnvironmentDetectionEnabled;                                        // 0x0013 (size: 0x1)
    TSet<FString> AdditionalTags;                                                     // 0x0018 (size: 0x50)

}; // Size: 0x68

class UOnlineHotfixManager : public UObject
{
    FString OSSName;                                                                  // 0x01F8 (size: 0x10)
    FString HotfixManagerClassName;                                                   // 0x0208 (size: 0x10)
    FString DebugPrefix;                                                              // 0x0218 (size: 0x10)
    TArray<class UObject*> AssetsHotfixedFromIniFiles;                                // 0x0228 (size: 0x10)

    void StartHotfixProcess();
}; // Size: 0x238

class UUpdateManager : public UObject
{
    float HotfixCheckCompleteDelay;                                                   // 0x0088 (size: 0x4)
    float UpdateCheckCompleteDelay;                                                   // 0x008C (size: 0x4)
    float HotfixAvailabilityCheckCompleteDelay;                                       // 0x0090 (size: 0x4)
    float UpdateCheckAvailabilityCompleteDelay;                                       // 0x0094 (size: 0x4)
    int32 AppSuspendedUpdateCheckTimeSeconds;                                         // 0x009C (size: 0x4)
    bool bPlatformEnvironmentDetected;                                                // 0x00A8 (size: 0x1)
    bool bInitialUpdateFinished;                                                      // 0x00A9 (size: 0x1)
    bool bCheckHotfixAvailabilityOnly;                                                // 0x00AA (size: 0x1)
    EUpdateState CurrentUpdateState;                                                  // 0x00AB (size: 0x1)
    int32 WorstNumFilesPendingLoadViewed;                                             // 0x00AC (size: 0x4)
    EHotfixResult LastHotfixResult;                                                   // 0x00B4 (size: 0x1)
    FDateTime LastUpdateCheck;                                                        // 0x00D8 (size: 0x10)
    EUpdateCompletionStatus LastCompletionResult;                                     // 0x00E8 (size: 0x2)
    class UEnum* UpdateStateEnum;                                                     // 0x0110 (size: 0x8)
    class UEnum* UpdateCompletionEnum;                                                // 0x0118 (size: 0x8)
    FUpdateContextDefinition UpdateContextDefinitionUnknown;                          // 0x0120 (size: 0x68)
    TArray<FUpdateContextDefinition> UpdateContextDefinitions;                        // 0x0188 (size: 0x10)

}; // Size: 0x1F0

#endif
