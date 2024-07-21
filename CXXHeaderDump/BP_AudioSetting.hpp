#ifndef UE4SS_SDK_BP_AudioSetting_HPP
#define UE4SS_SDK_BP_AudioSetting_HPP

class UBP_AudioSetting_C : public UPalAudioSettingSystem
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x00D0 (size: 0x8)
    TMap<EPalAudioBus, double> BusVolumes;                                            // 0x00D8 (size: 0x50)
    TMap<EPalAudioBus, double> BusVolumes_Debug;                                      // 0x0128 (size: 0x50)
    TMap<class EPalAudioBus, class bool> BusMute;                                     // 0x0178 (size: 0x50)
    TMap<class EPalAudioBus, class bool> BusMute_Debug;                               // 0x01C8 (size: 0x50)
    TMap<class EPalAudioBus, class FFloatContainer_FloatPair> BusVolumes_0;           // 0x0218 (size: 0x50)

    bool IsAudioBusMute(EPalAudioBus AudioBus);
    void SetAudioBusMute_Impl(EPalAudioBus AudioBus, bool IsMute);
    void Set Audio Bus Volume Impl(EPalAudioBus AudioBus, FName Key, double Volume);
    void UpdateAudioVolume(EPalAudioBus AudioBus);
    void Initialize_Impl();
    void IsMuteFromDebugSetting(EPalAudioBus AudioBus, bool& IsMute);
    void GetVolumeFromDebugSetting(EPalAudioBus AudioBus, double& Volume);
    void IsMuteFromMap(EPalAudioBus AuduiBus, TMap<class EPalAudioBus, class bool> ValMap, bool& Find, bool& IsMute);
    void GetVolumeFromMap(EPalAudioBus AuduiBus, TMap<EPalAudioBus, double> ValMap, bool& Find, double& Volume);
    void SetMuteToMap(EPalAudioBus AudioBus, bool IsMute, TMap<class EPalAudioBus, class bool>& MuteMap);
    void SetVolumeToMap(EPalAudioBus AudioBus, double Volume, TMap<EPalAudioBus, double>& ValMap);
    void Initialize();
    void Tick_BP(float DeltaTime);
    void SetAudioBusMute(EPalAudioBus AudioBus, bool IsMute);
    void SetAudioBusVolume(EPalAudioBus AudioBus, const FName& Key, float Volume);
    void ExecuteUbergraph_BP_AudioSetting(int32 EntryPoint);
}; // Size: 0x268

#endif
