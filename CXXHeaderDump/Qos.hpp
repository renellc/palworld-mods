#ifndef UE4SS_SDK_Qos_HPP
#define UE4SS_SDK_Qos_HPP

#include "Qos_enums.hpp"

struct FDatacenterQosInstance
{
    FQosDatacenterInfo Definition;                                                    // 0x0000 (size: 0x38)
    EQosDatacenterResult Result;                                                      // 0x0038 (size: 0x1)
    int32 AvgPingMs;                                                                  // 0x003C (size: 0x4)
    TArray<int32> PingResults;                                                        // 0x0040 (size: 0x10)
    FDateTime LastCheckTimestamp;                                                     // 0x0058 (size: 0x8)
    bool bUsable;                                                                     // 0x0060 (size: 0x1)

}; // Size: 0x68

struct FQosDatacenterInfo
{
    FString ID;                                                                       // 0x0000 (size: 0x10)
    FString regionId;                                                                 // 0x0010 (size: 0x10)
    bool bEnabled;                                                                    // 0x0020 (size: 0x1)
    TArray<FQosPingServerInfo> Servers;                                               // 0x0028 (size: 0x10)

}; // Size: 0x38

struct FQosPingServerInfo
{
    FString Address;                                                                  // 0x0000 (size: 0x10)
    int32 Port;                                                                       // 0x0010 (size: 0x4)

}; // Size: 0x18

struct FQosRegionInfo
{
    FText DisplayName;                                                                // 0x0000 (size: 0x18)
    FString regionId;                                                                 // 0x0018 (size: 0x10)
    bool bEnabled;                                                                    // 0x0028 (size: 0x1)
    bool bVisible;                                                                    // 0x0029 (size: 0x1)
    bool bAutoAssignable;                                                             // 0x002A (size: 0x1)
    bool bAllowSubspaceBias;                                                          // 0x002B (size: 0x1)
    FQosSubspaceComparisonParams SubspaceBiasParams;                                  // 0x002C (size: 0x10)

}; // Size: 0x40

struct FQosSubspaceComparisonParams
{
    int32 MaxNonSubspacePingMs;                                                       // 0x0000 (size: 0x4)
    int32 MinSubspacePingMs;                                                          // 0x0004 (size: 0x4)
    int32 ConstantMaxToleranceMs;                                                     // 0x0008 (size: 0x4)
    float ScaledMaxTolerancePct;                                                      // 0x000C (size: 0x4)

}; // Size: 0x10

struct FRegionQosInstance
{
    FQosRegionInfo Definition;                                                        // 0x0000 (size: 0x40)
    TArray<FDatacenterQosInstance> DatacenterOptions;                                 // 0x0040 (size: 0x10)

}; // Size: 0x50

class AQosBeaconClient : public AOnlineBeaconClient
{

    void ServerQosRequest(FString InSessionId);
    void ClientQosResponse(EQosResponseType Response);
}; // Size: 0x358

class AQosBeaconHost : public AOnlineBeaconHostObject
{
}; // Size: 0x2C8

class UQosEvaluator : public UObject
{
    bool bInProgress;                                                                 // 0x0048 (size: 0x1)
    bool bCancelOperation;                                                            // 0x0049 (size: 0x1)
    TArray<FDatacenterQosInstance> Datacenters;                                       // 0x0050 (size: 0x10)

}; // Size: 0x80

class UQosRegionManager : public UObject
{
    int32 NumTestsPerRegion;                                                          // 0x0028 (size: 0x4)
    float PingTimeout;                                                                // 0x002C (size: 0x4)
    bool bEnableSubspaceBiasOrder;                                                    // 0x0030 (size: 0x1)
    FString SubspaceDelimiter;                                                        // 0x0038 (size: 0x10)
    TArray<FQosRegionInfo> RegionDefinitions;                                         // 0x0048 (size: 0x10)
    TArray<FQosDatacenterInfo> DatacenterDefinitions;                                 // 0x0058 (size: 0x10)
    FDateTime LastCheckTimestamp;                                                     // 0x0068 (size: 0x8)
    class UQosEvaluator* Evaluator;                                                   // 0x0070 (size: 0x8)
    EQosCompletionResult QosEvalResult;                                               // 0x0078 (size: 0x1)
    TArray<FRegionQosInstance> RegionOptions;                                         // 0x0080 (size: 0x10)
    FString ForceRegionId;                                                            // 0x0090 (size: 0x10)
    bool bRegionForcedViaCommandline;                                                 // 0x00A0 (size: 0x1)
    FString SelectedRegionId;                                                         // 0x00A8 (size: 0x10)

}; // Size: 0xF8

#endif
