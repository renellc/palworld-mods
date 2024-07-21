#ifndef UE4SS_SDK_GameFeatures_HPP
#define UE4SS_SDK_GameFeatures_HPP

#include "GameFeatures_enums.hpp"

struct FDataRegistrySourceToAdd
{
    FName RegistryToAddTo;                                                            // 0x0000 (size: 0x8)
    int32 AssetPriority;                                                              // 0x0008 (size: 0x4)
    uint8 bClientSource;                                                              // 0x000C (size: 0x1)
    uint8 bServerSource;                                                              // 0x000C (size: 0x1)
    TSoftObjectPtr<UDataTable> DataTableToAdd;                                        // 0x0010 (size: 0x30)
    TSoftObjectPtr<UCurveTable> CurveTableToAdd;                                      // 0x0040 (size: 0x30)

}; // Size: 0x70

struct FGameFeatureComponentEntry
{
    TSoftClassPtr<AActor> actorClass;                                                 // 0x0000 (size: 0x30)
    TSoftClassPtr<UActorComponent> ComponentClass;                                    // 0x0030 (size: 0x30)
    uint8 bClientComponent;                                                           // 0x0060 (size: 0x1)
    uint8 bServerComponent;                                                           // 0x0060 (size: 0x1)

}; // Size: 0x68

struct FGameFeaturePluginIdentifier
{
}; // Size: 0x28

struct FGameFeaturePluginStateMachineProperties
{
    class UGameFeatureData* GameFeatureData;                                          // 0x0088 (size: 0x8)

}; // Size: 0xC8

struct FInstallBundlePluginProtocolMetaData
{
}; // Size: 0x20

class IGameFeatureStateChangeObserver : public IInterface
{
}; // Size: 0x28

class UDefaultGameFeaturesProjectPolicies : public UGameFeaturesProjectPolicies
{
}; // Size: 0x28

class UGameFeatureAction : public UObject
{
}; // Size: 0x28

class UGameFeatureAction_AddCheats : public UGameFeatureAction
{
    TArray<TSoftClassPtr<UCheatManagerExtension>> CheatManagers;                      // 0x0028 (size: 0x10)
    bool bLoadCheatManagersAsync;                                                     // 0x0038 (size: 0x1)
    TArray<TWeakObjectPtr<UCheatManagerExtension>> SpawnedCheatManagers;              // 0x0048 (size: 0x10)

}; // Size: 0x60

class UGameFeatureAction_AddComponents : public UGameFeatureAction
{
    TArray<FGameFeatureComponentEntry> ComponentList;                                 // 0x0028 (size: 0x10)

}; // Size: 0x88

class UGameFeatureAction_AddWPContent : public UGameFeatureAction
{
    class UContentBundleDescriptor* ContentBundleDescriptor;                          // 0x0028 (size: 0x8)

}; // Size: 0x40

class UGameFeatureAction_DataRegistry : public UGameFeatureAction
{
    TArray<TSoftObjectPtr<UDataRegistry>> RegistriesToAdd;                            // 0x0028 (size: 0x10)
    bool bPreloadInEditor;                                                            // 0x0038 (size: 0x1)

}; // Size: 0x40

class UGameFeatureAction_DataRegistrySource : public UGameFeatureAction
{
    TArray<FDataRegistrySourceToAdd> SourcesToAdd;                                    // 0x0028 (size: 0x10)
    bool bPreloadInEditor;                                                            // 0x0038 (size: 0x1)

}; // Size: 0x40

class UGameFeatureData : public UPrimaryDataAsset
{
    TArray<class UGameFeatureAction*> Actions;                                        // 0x0030 (size: 0x10)
    TArray<FPrimaryAssetTypeInfo> PrimaryAssetTypesToScan;                            // 0x0040 (size: 0x10)

}; // Size: 0x50

class UGameFeaturePluginStateMachine : public UObject
{
    FGameFeaturePluginStateMachineProperties StateProperties;                         // 0x0030 (size: 0xC8)

}; // Size: 0x1E0

class UGameFeaturesProjectPolicies : public UObject
{
}; // Size: 0x28

class UGameFeaturesSubsystem : public UEngineSubsystem
{
    TMap<class FGameFeaturePluginIdentifier, class UGameFeaturePluginStateMachine*> GameFeaturePluginStateMachines; // 0x0030 (size: 0x50)
    TArray<class UGameFeaturePluginStateMachine*> TerminalGameFeaturePluginStateMachines; // 0x0080 (size: 0x10)
    TArray<class UObject*> Observers;                                                 // 0x00E0 (size: 0x10)
    class UGameFeaturesProjectPolicies* GameSpecificPolicies;                         // 0x00F0 (size: 0x8)

}; // Size: 0x100

class UGameFeaturesSubsystemSettings : public UDeveloperSettings
{
    FSoftClassPath GameFeaturesManagerClassName;                                      // 0x0038 (size: 0x20)
    TArray<FString> DisabledPlugins;                                                  // 0x0058 (size: 0x10)
    TArray<FString> AdditionalPluginMetadataKeys;                                     // 0x0068 (size: 0x10)

}; // Size: 0x98

#endif
