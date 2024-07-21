#ifndef UE4SS_SDK_PPSkyCreator_ControllerExample_HPP
#define UE4SS_SDK_PPSkyCreator_ControllerExample_HPP

class APPSkyCreator_ControllerExample_C : public AActor
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0290 (size: 0x8)
    class UAudioComponent* SoundRain;                                                 // 0x0298 (size: 0x8)
    class UTextRenderComponent* TextRender;                                           // 0x02A0 (size: 0x8)
    class USceneComponent* DefaultSceneRoot;                                          // 0x02A8 (size: 0x8)
    class APPSkyCreator* SkyCreatorTarget;                                            // 0x02B0 (size: 0x8)
    bool bRealtimeTimeOfDay;                                                          // 0x02B8 (size: 0x1)
    double RealtimeTimeOfDayStart;                                                    // 0x02C0 (size: 0x8)
    double RealtimeTimeOfDayDuration;                                                 // 0x02C8 (size: 0x8)
    bool bRealtimeWeatherChange;                                                      // 0x02D0 (size: 0x1)
    double ChangeIntervalTimeMin;                                                     // 0x02D8 (size: 0x8)
    double ChangeIntervalTimeMax;                                                     // 0x02E0 (size: 0x8)
    class UPPSkyCreatorWeatherPreset* StartWeatherPreset;                             // 0x02E8 (size: 0x8)
    double InterpolateDurationTimeMin;                                                // 0x02F0 (size: 0x8)
    double InterpolateDurationTimeMax;                                                // 0x02F8 (size: 0x8)
    TArray<class UPPSkyCreatorWeatherPreset*> RandomWeatherPresets;                   // 0x0300 (size: 0x10)
    bool DrawDebugMessages;                                                           // 0x0310 (size: 0x1)
    class USoundCue* Rain;                                                            // 0x0318 (size: 0x8)
    class UPPSkyCreatorWeatherPreset* NextWeatherPreset;                              // 0x0320 (size: 0x8)
    FPPSkyCreatorWeatherSettings CurrentWeatherSettings;                              // 0x0328 (size: 0x458)
    FPPSkyCreatorWeatherSettings NextWeatherSettings;                                 // 0x0780 (size: 0x458)
    double WeatherInterpolateDuration;                                                // 0x0BD8 (size: 0x8)
    double InterpolateDurationAlpha;                                                  // 0x0BE0 (size: 0x8)
    double CurrentChangeInterval;                                                     // 0x0BE8 (size: 0x8)
    FTimerHandle Timer_WeatherInterpolateDuration;                                    // 0x0BF0 (size: 0x8)
    FTimerHandle Timer_WeatherChangeInterval;                                         // 0x0BF8 (size: 0x8)
    bool bEnableRandomWind;                                                           // 0x0C00 (size: 0x1)
    double CloudWindSpeedMin;                                                         // 0x0C08 (size: 0x8)
    double CloudWindSpeedMax;                                                         // 0x0C10 (size: 0x8)
    FPPSkyCreatorWindSettings CurrentWindSettings;                                    // 0x0C18 (size: 0x1C)
    FPPSkyCreatorWindSettings NextWindSettings;                                       // 0x0C34 (size: 0x1C)
    double CurrentWindDirection;                                                      // 0x0C50 (size: 0x8)
    double CurrentWindSpeed;                                                          // 0x0C58 (size: 0x8)
    double WetnessAccumulateDuration;                                                 // 0x0C60 (size: 0x8)
    double WetnessDryDuration;                                                        // 0x0C68 (size: 0x8)
    double PuddlesAccumulateDuration;                                                 // 0x0C70 (size: 0x8)
    double PuddlesDryDuration;                                                        // 0x0C78 (size: 0x8)
    double SnowAccumulateDuration;                                                    // 0x0C80 (size: 0x8)
    double SnowMeltDuration;                                                          // 0x0C88 (size: 0x8)
    FTimerHandle WetnessAccumulationTimer;                                            // 0x0C90 (size: 0x8)
    FTimerHandle WetnessDryTimer;                                                     // 0x0C98 (size: 0x8)
    FTimerHandle PuddlesAccumulationTimer;                                            // 0x0CA0 (size: 0x8)
    FTimerHandle PuddlesDryTimer;                                                     // 0x0CA8 (size: 0x8)
    FTimerHandle SnowAccumulationTimer;                                               // 0x0CB0 (size: 0x8)
    FTimerHandle SnowMeltTimer;                                                       // 0x0CB8 (size: 0x8)
    double CurrentWetnessAmount;                                                      // 0x0CC0 (size: 0x8)
    double NextWetnessAmount;                                                         // 0x0CC8 (size: 0x8)
    double CurrentPuddlesAmount;                                                      // 0x0CD0 (size: 0x8)
    double NextPuddlesAmount;                                                         // 0x0CD8 (size: 0x8)
    double CurrentSnowAmount;                                                         // 0x0CE0 (size: 0x8)
    double NextSnowAmount;                                                            // 0x0CE8 (size: 0x8)
    class USoundBase* Lightnings;                                                     // 0x0CF0 (size: 0x8)

    void SetRainVolume();
    void WeatherMaterialFX_Interpolation();
    void UserConstructionScript();
    void ReceiveBeginPlay();
    void ReceiveTick(float DeltaSeconds);
    void Start_WeatherInterpolation();
    void Finish_WeatherInterpolation();
    void Start_WeatherChangeInterval();
    void Finish_WeatherChangeInterval();
    void Finish_PuddlesAccumulation();
    void Finish_WetnessAccumulation();
    void Finish_WetnessDry();
    void Finish_PuddlesDry();
    void Start_WetnessAccumulate();
    void Start_WetnessDry();
    void Start_PuddlesAccumulate();
    void Start_PuddlesDry();
    void Start_SnowAccumulate();
    void Start_SnowMelt();
    void Finish_SnowAccumulate();
    void Finish_SnowDry();
    void LightningStrike(FVector LightningPosition);
    void ExecuteUbergraph_PPSkyCreator_ControllerExample(int32 EntryPoint);
}; // Size: 0xCF8

#endif
