#ifndef UE4SS_SDK_Wwise_HPP
#define UE4SS_SDK_Wwise_HPP

class UWwiseAudioLinkComponent : public UAkComponent
{
    class UWwiseAudioLinkSettings* Settings;                                          // 0x04B0 (size: 0x8)
    class USoundBase* Sound;                                                          // 0x04B8 (size: 0x8)
    bool bAutoPlay;                                                                   // 0x04C0 (size: 0x1)
    class UAudioComponent* AudioComponent;                                            // 0x04C8 (size: 0x8)

}; // Size: 0x4E0

class UWwiseAudioLinkSettings : public UAudioLinkSettingsAbstract
{
    TSoftObjectPtr<UAkAudioEvent> StartEvent;                                         // 0x0038 (size: 0x30)
    bool bShouldClearBufferOnReceipt;                                                 // 0x0068 (size: 0x1)
    float ProducerToConsumerBufferRatio;                                              // 0x006C (size: 0x4)
    float InitialSilenceFillRatio;                                                    // 0x0070 (size: 0x4)
    class UAkAudioEvent* StartEventResolved;                                          // 0x0088 (size: 0x8)

}; // Size: 0x90

#endif
