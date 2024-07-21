#ifndef UE4SS_SDK_CommonLoadingScreen_HPP
#define UE4SS_SDK_CommonLoadingScreen_HPP

class ILoadingProcessInterface : public IInterface
{
}; // Size: 0x28

class UCommonLoadingScreenSettings : public UDeveloperSettingsBackedByCVars
{
    FSoftClassPath LoadingScreenWidget;                                               // 0x0038 (size: 0x20)
    int32 LoadingScreenZOrder;                                                        // 0x0058 (size: 0x4)
    float HoldLoadingScreenAdditionalSecs;                                            // 0x005C (size: 0x4)
    float LoadingScreenHeartbeatHangDuration;                                         // 0x0060 (size: 0x4)
    float LogLoadingScreenHeartbeatInterval;                                          // 0x0064 (size: 0x4)
    bool LogLoadingScreenReasonEveryFrame;                                            // 0x0068 (size: 0x1)
    bool ForceLoadingScreenVisible;                                                   // 0x0069 (size: 0x1)
    bool HoldLoadingScreenAdditionalSecsEvenInEditor;                                 // 0x006A (size: 0x1)
    bool ForceTickLoadingScreenEvenInEditor;                                          // 0x006B (size: 0x1)

}; // Size: 0x70

class ULoadingProcessTask : public UObject
{

    void Unregister();
    void SetShowLoadingScreenReason(FString InReason);
    class ULoadingProcessTask* CreateLoadingScreenProcessTask(class UObject* WorldContextObject, FString ShowLoadingScreenReason);
}; // Size: 0x40

class ULoadingScreenManager : public UGameInstanceSubsystem
{

    FString GetDebugReasonForShowingOrHidingLoadingScreen();
}; // Size: 0xB0

#endif
