#ifndef UE4SS_SDK_GameplayCameras_HPP
#define UE4SS_SDK_GameplayCameras_HPP

#include "GameplayCameras_enums.hpp"

struct FActiveCameraAnimationInfo
{
    class UCameraAnimationSequence* Sequence;                                         // 0x0000 (size: 0x8)
    FCameraAnimationParams Params;                                                    // 0x0008 (size: 0x40)
    FCameraAnimationHandle Handle;                                                    // 0x0048 (size: 0x4)
    class UCameraAnimationSequencePlayer* Player;                                     // 0x0050 (size: 0x8)
    class UCameraAnimationSequenceCameraStandIn* CameraStandIn;                       // 0x0058 (size: 0x8)
    float EaseInCurrentTime;                                                          // 0x0060 (size: 0x4)
    float EaseOutCurrentTime;                                                         // 0x0064 (size: 0x4)
    bool bIsEasingIn;                                                                 // 0x0068 (size: 0x1)
    bool bIsEasingOut;                                                                // 0x0069 (size: 0x1)

}; // Size: 0x70

struct FCameraAnimationHandle
{
}; // Size: 0x4

struct FCameraAnimationParams
{
    float PlayRate;                                                                   // 0x0000 (size: 0x4)
    float Scale;                                                                      // 0x0004 (size: 0x4)
    ECameraAnimationEasingType EaseInType;                                            // 0x0008 (size: 0x1)
    float EaseInDuration;                                                             // 0x000C (size: 0x4)
    ECameraAnimationEasingType EaseOutType;                                           // 0x0010 (size: 0x1)
    float EaseOutDuration;                                                            // 0x0014 (size: 0x4)
    bool bLoop;                                                                       // 0x0018 (size: 0x1)
    bool bRandomStartTime;                                                            // 0x0019 (size: 0x1)
    float DurationOverride;                                                           // 0x001C (size: 0x4)
    ECameraAnimationPlaySpace PlaySpace;                                              // 0x0020 (size: 0x1)
    FRotator UserPlaySpaceRot;                                                        // 0x0028 (size: 0x18)

}; // Size: 0x40

struct FFOscillator
{
    float Amplitude;                                                                  // 0x0000 (size: 0x4)
    float Frequency;                                                                  // 0x0004 (size: 0x4)
    TEnumAsByte<EInitialOscillatorOffset> InitialOffset;                              // 0x0008 (size: 0x1)
    EOscillatorWaveform Waveform;                                                     // 0x0009 (size: 0x1)

}; // Size: 0xC

struct FPerlinNoiseShaker
{
    float Amplitude;                                                                  // 0x0000 (size: 0x4)
    float Frequency;                                                                  // 0x0004 (size: 0x4)

}; // Size: 0x8

struct FROscillator
{
    FFOscillator Pitch;                                                               // 0x0000 (size: 0xC)
    FFOscillator Yaw;                                                                 // 0x000C (size: 0xC)
    FFOscillator Roll;                                                                // 0x0018 (size: 0xC)

}; // Size: 0x24

struct FVOscillator
{
    FFOscillator X;                                                                   // 0x0000 (size: 0xC)
    FFOscillator Y;                                                                   // 0x000C (size: 0xC)
    FFOscillator Z;                                                                   // 0x0018 (size: 0xC)

}; // Size: 0x24

struct FWaveOscillator
{
    float Amplitude;                                                                  // 0x0000 (size: 0x4)
    float Frequency;                                                                  // 0x0004 (size: 0x4)
    EInitialWaveOscillatorOffsetType InitialOffsetType;                               // 0x0008 (size: 0x1)

}; // Size: 0xC

class UCameraAnimationCameraModifier : public UCameraModifier
{
    TArray<FActiveCameraAnimationInfo> ActiveAnimations;                              // 0x0048 (size: 0x10)
    uint16 NextInstanceSerialNumber;                                                  // 0x0058 (size: 0x2)

    void StopCameraAnimation(const FCameraAnimationHandle& Handle, bool bImmediate);
    void StopAllCameraAnimationsOf(class UCameraAnimationSequence* Sequence, bool bImmediate);
    void StopAllCameraAnimations(bool bImmediate);
    FCameraAnimationHandle PlayCameraAnimation(class UCameraAnimationSequence* Sequence, FCameraAnimationParams Params);
    bool IsCameraAnimationActive(const FCameraAnimationHandle& Handle);
    class UCameraAnimationCameraModifier* GetCameraAnimationCameraModifierFromPlayerController(const class APlayerController* PlayerController);
    class UCameraAnimationCameraModifier* GetCameraAnimationCameraModifierFromID(const class UObject* WorldContextObject, int32 ControllerId);
    class UCameraAnimationCameraModifier* GetCameraAnimationCameraModifier(const class UObject* WorldContextObject, int32 PlayerIndex);
}; // Size: 0x60

class UCompositeCameraShakePattern : public UCameraShakePattern
{
    TArray<class UCameraShakePattern*> ChildPatterns;                                 // 0x0028 (size: 0x10)

}; // Size: 0x48

class UConstantCameraShakePattern : public USimpleCameraShakePattern
{
    FVector LocationOffset;                                                           // 0x0038 (size: 0x18)
    FRotator RotationOffset;                                                          // 0x0050 (size: 0x18)

}; // Size: 0x68

class UDefaultCameraShakeBase : public UCameraShakeBase
{
}; // Size: 0xF0

class UGameplayCamerasFunctionLibrary : public UBlueprintFunctionLibrary
{

    ECameraShakePlaySpace Conv_CameraShakePlaySpace(ECameraAnimationPlaySpace CameraAnimationPlaySpace);
    ECameraAnimationPlaySpace Conv_CameraAnimationPlaySpace(ECameraShakePlaySpace CameraShakePlaySpace);
    class UCameraAnimationCameraModifier* Conv_CameraAnimationCameraModifier(class APlayerCameraManager* PlayerCameraManager);
}; // Size: 0x28

class UGameplayCamerasSubsystem : public UWorldSubsystem
{

    void StopCameraAnimation(class APlayerController* PlayerController, const FCameraAnimationHandle& Handle, bool bImmediate);
    void StopAllCameraAnimationsOf(class APlayerController* PlayerController, class UCameraAnimationSequence* Sequence, bool bImmediate);
    void StopAllCameraAnimations(class APlayerController* PlayerController, bool bImmediate);
    FCameraAnimationHandle PlayCameraAnimation(class APlayerController* PlayerController, class UCameraAnimationSequence* Sequence, FCameraAnimationParams Params);
    bool IsCameraAnimationActive(class APlayerController* PlayerController, const FCameraAnimationHandle& Handle);
}; // Size: 0x30

class ULegacyCameraShake : public UCameraShakeBase
{
    float OscillationDuration;                                                        // 0x00E8 (size: 0x4)
    float OscillationBlendInTime;                                                     // 0x00EC (size: 0x4)
    float OscillationBlendOutTime;                                                    // 0x00F0 (size: 0x4)
    FROscillator RotOscillation;                                                      // 0x00F4 (size: 0x24)
    FVOscillator LocOscillation;                                                      // 0x0118 (size: 0x24)
    FFOscillator FOVOscillation;                                                      // 0x013C (size: 0xC)
    float AnimPlayRate;                                                               // 0x0148 (size: 0x4)
    float AnimScale;                                                                  // 0x014C (size: 0x4)
    float AnimBlendInTime;                                                            // 0x0150 (size: 0x4)
    float AnimBlendOutTime;                                                           // 0x0154 (size: 0x4)
    float RandomAnimSegmentDuration;                                                  // 0x0158 (size: 0x4)
    class UCameraAnimationSequence* AnimSequence;                                     // 0x0160 (size: 0x8)
    uint8 bRandomAnimSegment;                                                         // 0x0168 (size: 0x1)
    float OscillatorTimeRemaining;                                                    // 0x016C (size: 0x4)
    class USequenceCameraShakePattern* SequenceShakePattern;                          // 0x01E0 (size: 0x8)

    class ULegacyCameraShake* StartLegacyCameraShakeFromSource(class APlayerCameraManager* PlayerCameraManager, TSubclassOf<class ULegacyCameraShake> ShakeClass, class UCameraShakeSourceComponent* SourceComponent, float Scale, ECameraShakePlaySpace PlaySpace, FRotator UserPlaySpaceRot);
    class ULegacyCameraShake* StartLegacyCameraShake(class APlayerCameraManager* PlayerCameraManager, TSubclassOf<class ULegacyCameraShake> ShakeClass, float Scale, ECameraShakePlaySpace PlaySpace, FRotator UserPlaySpaceRot);
    void ReceiveStopShake(bool bImmediately);
    void ReceivePlayShake(float Scale);
    bool ReceiveIsFinished();
    void BlueprintUpdateCameraShake(float DeltaTime, float Alpha, const FMinimalViewInfo& POV, FMinimalViewInfo& ModifiedPOV);
}; // Size: 0x210

class ULegacyCameraShakeFunctionLibrary : public UBlueprintFunctionLibrary
{

    class ULegacyCameraShake* Conv_LegacyCameraShake(class UCameraShakeBase* CameraShake);
}; // Size: 0x28

class ULegacyCameraShakePattern : public UCameraShakePattern
{
}; // Size: 0x28

class UPerlinNoiseCameraShakePattern : public USimpleCameraShakePattern
{
    float LocationAmplitudeMultiplier;                                                // 0x0038 (size: 0x4)
    float LocationFrequencyMultiplier;                                                // 0x003C (size: 0x4)
    FPerlinNoiseShaker X;                                                             // 0x0040 (size: 0x8)
    FPerlinNoiseShaker Y;                                                             // 0x0048 (size: 0x8)
    FPerlinNoiseShaker Z;                                                             // 0x0050 (size: 0x8)
    float RotationAmplitudeMultiplier;                                                // 0x0058 (size: 0x4)
    float RotationFrequencyMultiplier;                                                // 0x005C (size: 0x4)
    FPerlinNoiseShaker Pitch;                                                         // 0x0060 (size: 0x8)
    FPerlinNoiseShaker Yaw;                                                           // 0x0068 (size: 0x8)
    FPerlinNoiseShaker Roll;                                                          // 0x0070 (size: 0x8)
    FPerlinNoiseShaker FOV;                                                           // 0x0078 (size: 0x8)

}; // Size: 0xB8

class USimpleCameraShakePattern : public UCameraShakePattern
{
    float Duration;                                                                   // 0x0028 (size: 0x4)
    float BlendInTime;                                                                // 0x002C (size: 0x4)
    float BlendOutTime;                                                               // 0x0030 (size: 0x4)

}; // Size: 0x38

class UTestCameraShake : public UCameraShakeBase
{
}; // Size: 0xF0

class UWaveOscillatorCameraShakePattern : public USimpleCameraShakePattern
{
    float LocationAmplitudeMultiplier;                                                // 0x0038 (size: 0x4)
    float LocationFrequencyMultiplier;                                                // 0x003C (size: 0x4)
    FWaveOscillator X;                                                                // 0x0040 (size: 0xC)
    FWaveOscillator Y;                                                                // 0x004C (size: 0xC)
    FWaveOscillator Z;                                                                // 0x0058 (size: 0xC)
    float RotationAmplitudeMultiplier;                                                // 0x0064 (size: 0x4)
    float RotationFrequencyMultiplier;                                                // 0x0068 (size: 0x4)
    FWaveOscillator Pitch;                                                            // 0x006C (size: 0xC)
    FWaveOscillator Yaw;                                                              // 0x0078 (size: 0xC)
    FWaveOscillator Roll;                                                             // 0x0084 (size: 0xC)
    FWaveOscillator FOV;                                                              // 0x0090 (size: 0xC)

}; // Size: 0xD8

#endif
