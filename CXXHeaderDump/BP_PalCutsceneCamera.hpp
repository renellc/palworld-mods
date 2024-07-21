#ifndef UE4SS_SDK_BP_PalCutsceneCamera_HPP
#define UE4SS_SDK_BP_PalCutsceneCamera_HPP

class ABP_PalCutsceneCamera_C : public ACineCameraActor
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0A20 (size: 0x8)
    class USceneCaptureComponent2D* SceneCaptureComponent2D;                          // 0x0A28 (size: 0x8)
    TMap<class EPalBossType, class TSubclassOf<UWBP_BossDemoBase_C>> BossDemoWidgetMap; // 0x0A30 (size: 0x50)
    class UWBP_BossDemoBase_C* NowDisplayingBossDemoWidget;                           // 0x0A80 (size: 0x8)

    void StopBossDemoCapture();
    void StartCaptureBossDemo(EPalBossType BossType);
    void PreSetupBossDemoCapture();
    void ReceiveTick(float DeltaSeconds);
    void ReceiveEndPlay(TEnumAsByte<EEndPlayReason::Type> EndPlayReason);
    void ExecuteUbergraph_BP_PalCutsceneCamera(int32 EntryPoint);
}; // Size: 0xA88

#endif
