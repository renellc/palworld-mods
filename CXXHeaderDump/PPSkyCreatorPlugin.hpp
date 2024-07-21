#ifndef UE4SS_SDK_PPSkyCreatorPlugin_HPP
#define UE4SS_SDK_PPSkyCreatorPlugin_HPP

#include "PPSkyCreatorPlugin_enums.hpp"

struct FPPCelestialPositionData
{
    float Elevation;                                                                  // 0x0000 (size: 0x4)
    float Azimuth;                                                                    // 0x0004 (size: 0x4)

}; // Size: 0x8

struct FPPSkyCreatorBackgroundCloudSettings
{
    float BackgroundCloudsIntensity;                                                  // 0x0000 (size: 0x4)
    FLinearColor BackgroundCloudsColorTint;                                           // 0x0004 (size: 0x10)
    float BackgroundCloudsLayerA;                                                     // 0x0014 (size: 0x4)
    float BackgroundCloudsLayerB;                                                     // 0x0018 (size: 0x4)
    float BackgroundCloudsLayerC;                                                     // 0x001C (size: 0x4)
    float BackgroundCloudsLightningPhase;                                             // 0x0020 (size: 0x4)

}; // Size: 0x24

struct FPPSkyCreatorExponentialHeightFogSettings
{
    float FogDensity;                                                                 // 0x0000 (size: 0x4)
    float FogHeightFalloff;                                                           // 0x0004 (size: 0x4)
    FLinearColor FogInscatteringColor;                                                // 0x0008 (size: 0x10)
    float FogStartDistance;                                                           // 0x0018 (size: 0x4)
    float SecondFogDensity;                                                           // 0x001C (size: 0x4)
    float SecondFogHeightFalloff;                                                     // 0x0020 (size: 0x4)
    float DirectionalInscatteringExponent;                                            // 0x0024 (size: 0x4)
    float DirectionalInscatteringStartDistance;                                       // 0x0028 (size: 0x4)
    FLinearColor DirectionalInscatteringColor;                                        // 0x002C (size: 0x10)
    float VolumetricFogScatteringDistribution;                                        // 0x003C (size: 0x4)
    FLinearColor VolumetricFogAlbedo;                                                 // 0x0040 (size: 0x10)
    FLinearColor VolumetricFogEmissive;                                               // 0x0050 (size: 0x10)
    float VolumetricFogExtinctionScale;                                               // 0x0060 (size: 0x4)

}; // Size: 0x64

struct FPPSkyCreatorLightningParameters
{
    FLinearColor Position;                                                            // 0x0000 (size: 0x10)
    FLinearColor Color;                                                               // 0x0010 (size: 0x10)

}; // Size: 0x20

struct FPPSkyCreatorMoonLightSettings
{
    float Intensity;                                                                  // 0x0000 (size: 0x4)
    FLinearColor LightColor;                                                          // 0x0004 (size: 0x10)
    float Temperature;                                                                // 0x0014 (size: 0x4)
    float VolumetricScatteringIntensity;                                              // 0x0018 (size: 0x4)
    FLinearColor AtmosphereDiskColorScale;                                            // 0x001C (size: 0x10)
    FLinearColor CloudScatteredLuminanceScale;                                        // 0x002C (size: 0x10)
    float CloudShadowStrength;                                                        // 0x003C (size: 0x4)
    float CloudShadowOnAtmosphereStrength;                                            // 0x0040 (size: 0x4)
    float CloudShadowOnSurfaceStrength;                                               // 0x0044 (size: 0x4)

}; // Size: 0x48

struct FPPSkyCreatorPostProcessSettings
{
    float BloomIntensity;                                                             // 0x0000 (size: 0x4)
    float BloomThreshold;                                                             // 0x0004 (size: 0x4)
    float ExposureCompensation;                                                       // 0x0008 (size: 0x4)

}; // Size: 0xC

struct FPPSkyCreatorSkyAtmosphereSettings
{
    float RayleighScatteringScale;                                                    // 0x0000 (size: 0x4)
    FLinearColor RayleighScattering;                                                  // 0x0004 (size: 0x10)
    float RayleighExponentialDistribution;                                            // 0x0014 (size: 0x4)
    float MieScatteringScale;                                                         // 0x0018 (size: 0x4)
    FLinearColor MieScattering;                                                       // 0x001C (size: 0x10)
    float MieAbsorptionScale;                                                         // 0x002C (size: 0x4)
    FLinearColor MieAbsorption;                                                       // 0x0030 (size: 0x10)
    float MieAnisotropy;                                                              // 0x0040 (size: 0x4)
    float MieExponentialDistribution;                                                 // 0x0044 (size: 0x4)
    float AbsorptionScale;                                                            // 0x0048 (size: 0x4)
    FLinearColor Absorption;                                                          // 0x004C (size: 0x10)
    FLinearColor SkyLuminanceFactor;                                                  // 0x005C (size: 0x10)
    FLinearColor GroundAlbedo;                                                        // 0x006C (size: 0x10)
    float HeightFogContribution;                                                      // 0x007C (size: 0x4)

}; // Size: 0x80

struct FPPSkyCreatorSkyLightSettings
{
    float Intensity;                                                                  // 0x0000 (size: 0x4)
    float NightIntensity;                                                             // 0x0004 (size: 0x4)
    FLinearColor LightColor;                                                          // 0x0008 (size: 0x10)
    FLinearColor LowerHemisphereColor;                                                // 0x0018 (size: 0x10)
    float CloudAmbientOcclusionStrength;                                              // 0x0028 (size: 0x4)

}; // Size: 0x2C

struct FPPSkyCreatorStarMapSettings
{
    float StarMapIntensity;                                                           // 0x0000 (size: 0x4)
    FLinearColor StarMapColorTint;                                                    // 0x0004 (size: 0x10)
    float StarMapTwinkleIntensity;                                                    // 0x0014 (size: 0x4)
    float StarMapTwinkleSaturation;                                                   // 0x0018 (size: 0x4)
    float StarMapTwinkleSpeed;                                                        // 0x001C (size: 0x4)
    float StarMapHorizonThreshold;                                                    // 0x0020 (size: 0x4)
    float StarMapAtmosphereThreshold;                                                 // 0x0024 (size: 0x4)
    FLinearColor NightHorizonColor;                                                   // 0x0028 (size: 0x10)
    FLinearColor NightZenithColor;                                                    // 0x0038 (size: 0x10)

}; // Size: 0x48

struct FPPSkyCreatorSunLightSettings
{
    float Intensity;                                                                  // 0x0000 (size: 0x4)
    FLinearColor LightColor;                                                          // 0x0004 (size: 0x10)
    float Temperature;                                                                // 0x0014 (size: 0x4)
    float VolumetricScatteringIntensity;                                              // 0x0018 (size: 0x4)
    FLinearColor AtmosphereDiskColorScale;                                            // 0x001C (size: 0x10)
    FLinearColor CloudScatteredLuminanceScale;                                        // 0x002C (size: 0x10)
    float CloudShadowStrength;                                                        // 0x003C (size: 0x4)
    float CloudShadowOnAtmosphereStrength;                                            // 0x0040 (size: 0x4)
    float CloudShadowOnSurfaceStrength;                                               // 0x0044 (size: 0x4)

}; // Size: 0x48

struct FPPSkyCreatorVolumetricCloudSettings
{
    float StratusCoverage;                                                            // 0x0000 (size: 0x4)
    float StratusCoverageVariation;                                                   // 0x0004 (size: 0x4)
    float StratusHeightVariation;                                                     // 0x0008 (size: 0x4)
    float StratocumulusCoverage;                                                      // 0x000C (size: 0x4)
    float StratocumulusCoverageVariation;                                             // 0x0010 (size: 0x4)
    float StratocumulusHeightVariation;                                               // 0x0014 (size: 0x4)
    float CumulusCoverage;                                                            // 0x0018 (size: 0x4)
    float CumulusCoverageVariation;                                                   // 0x001C (size: 0x4)
    float CumulusHeightVariation;                                                     // 0x0020 (size: 0x4)
    float CumulonimbusCoverage;                                                       // 0x0024 (size: 0x4)
    float CumulonimbusAnvil;                                                          // 0x0028 (size: 0x4)
    float CumulonimbusHeightVariation;                                                // 0x002C (size: 0x4)
    float DensityBottom;                                                              // 0x0030 (size: 0x4)
    float DensityMiddle;                                                              // 0x0034 (size: 0x4)
    float DensityTop;                                                                 // 0x0038 (size: 0x4)
    FLinearColor albedo;                                                              // 0x003C (size: 0x10)
    FLinearColor GroundAlbedo;                                                        // 0x004C (size: 0x10)
    float BeersPowderIntensity;                                                       // 0x005C (size: 0x4)
    float BeersPowderDepth;                                                           // 0x0060 (size: 0x4)
    float BottomOcclusion;                                                            // 0x0064 (size: 0x4)
    float BottomOcclusionHeight;                                                      // 0x0068 (size: 0x4)
    FLinearColor NightEmissive;                                                       // 0x006C (size: 0x10)
    float PhaseG;                                                                     // 0x007C (size: 0x4)
    float PhaseG2;                                                                    // 0x0080 (size: 0x4)
    float PhaseBlend;                                                                 // 0x0084 (size: 0x4)
    float MultiScatteringContribution;                                                // 0x0088 (size: 0x4)
    float MultiScatteringOcclusion;                                                   // 0x008C (size: 0x4)
    float MultiScatteringEccentricity;                                                // 0x0090 (size: 0x4)
    float NoiseShapeIntensityA;                                                       // 0x0094 (size: 0x4)
    float NoiseShapeIntensityB;                                                       // 0x0098 (size: 0x4)
    float NoiseShapeIntensityC;                                                       // 0x009C (size: 0x4)
    float NoiseShapeIntensityD;                                                       // 0x00A0 (size: 0x4)
    float TurbulenceIntensity;                                                        // 0x00A4 (size: 0x4)

}; // Size: 0xA8

struct FPPSkyCreatorWeatherFXSettings
{
    float RainAmount;                                                                 // 0x0000 (size: 0x4)
    FLinearColor RainColor;                                                           // 0x0004 (size: 0x10)
    float RainGravity;                                                                // 0x0014 (size: 0x4)
    float RainLifetimeMin;                                                            // 0x0018 (size: 0x4)
    float RainLifetimeMax;                                                            // 0x001C (size: 0x4)
    float RainSizeMin;                                                                // 0x0020 (size: 0x4)
    float RainSizeMax;                                                                // 0x0024 (size: 0x4)
    float RainSplashLifetimeMin;                                                      // 0x0028 (size: 0x4)
    float RainSplashLifetimeMax;                                                      // 0x002C (size: 0x4)
    FVector2D RainSplashSizeMin;                                                      // 0x0030 (size: 0x10)
    FVector2D RainSplashSizeMax;                                                      // 0x0040 (size: 0x10)
    float SnowAmount;                                                                 // 0x0050 (size: 0x4)
    FLinearColor SnowColor;                                                           // 0x0054 (size: 0x10)
    float SnowGravity;                                                                // 0x0064 (size: 0x4)
    float SnowTurbulence;                                                             // 0x0068 (size: 0x4)
    float SnowLifetimeMin;                                                            // 0x006C (size: 0x4)
    float SnowLifetimeMax;                                                            // 0x0070 (size: 0x4)
    float SnowSizeMin;                                                                // 0x0074 (size: 0x4)
    float SnowSizeMax;                                                                // 0x0078 (size: 0x4)
    bool EnableLightnings;                                                            // 0x007C (size: 0x1)
    float LightningSpawnIntervalMin;                                                  // 0x0080 (size: 0x4)
    float LightningSpawnIntervalMax;                                                  // 0x0084 (size: 0x4)
    FLinearColor LightningColorMin;                                                   // 0x0088 (size: 0x10)
    FLinearColor LightningColorMax;                                                   // 0x0098 (size: 0x10)
    float LightningLifetime;                                                          // 0x00A8 (size: 0x4)
    float LightningBoltSpawnChance;                                                   // 0x00AC (size: 0x4)
    float LightningBoltWidthMin;                                                      // 0x00B0 (size: 0x4)
    float LightningBoltWidthMax;                                                      // 0x00B4 (size: 0x4)
    float LightningBoltLengthMin;                                                     // 0x00B8 (size: 0x4)
    float LightningBoltLengthMax;                                                     // 0x00BC (size: 0x4)
    float LightningBoltCurveFrequency;                                                // 0x00C0 (size: 0x4)
    float LightningBoltCurveStrengthMin;                                              // 0x00C4 (size: 0x4)
    float LightningBoltCurveStrengthMax;                                              // 0x00C8 (size: 0x4)
    float LightningBoltJitterStrength;                                                // 0x00CC (size: 0x4)
    float LightningBranchSpawnChance;                                                 // 0x00D0 (size: 0x4)
    float LightningBranchScaleMin;                                                    // 0x00D4 (size: 0x4)
    float LightningBranchScaleMax;                                                    // 0x00D8 (size: 0x4)
    float RainbowAmount;                                                              // 0x00DC (size: 0x4)
    FLinearColor RainbowColor;                                                        // 0x00E0 (size: 0x10)
    float RainbowRadius;                                                              // 0x00F0 (size: 0x4)
    float RainbowThickness;                                                           // 0x00F4 (size: 0x4)
    FLinearColor SecondaryRainbowColor;                                               // 0x00F8 (size: 0x10)
    float SecondaryRainbowRadius;                                                     // 0x0108 (size: 0x4)
    float SecondaryRainbowThickness;                                                  // 0x010C (size: 0x4)

}; // Size: 0x110

struct FPPSkyCreatorWeatherMaterialFXSettings
{
    float WetnessAmount;                                                              // 0x0000 (size: 0x4)
    FLinearColor WetnessColor;                                                        // 0x0004 (size: 0x10)
    float PuddlesAmount;                                                              // 0x0014 (size: 0x4)
    FLinearColor PuddlesColor;                                                        // 0x0018 (size: 0x10)
    float RainRipplesAmount;                                                          // 0x0028 (size: 0x4)
    float RainRipplesIntensity;                                                       // 0x002C (size: 0x4)
    float RainRipplesForceMinRadius;                                                  // 0x0030 (size: 0x4)
    float RainRipplesForceMaxRadius;                                                  // 0x0034 (size: 0x4)
    float RainRipplesRingsNumber;                                                     // 0x0038 (size: 0x4)
    float RainRipplesRingsDelay;                                                      // 0x003C (size: 0x4)
    float RainRipplesDamping;                                                         // 0x0040 (size: 0x4)
    float WindRipplesIntensity;                                                       // 0x0044 (size: 0x4)
    float WindRipplesSpeed;                                                           // 0x0048 (size: 0x4)
    float SnowAmount;                                                                 // 0x004C (size: 0x4)
    FLinearColor SnowColor;                                                           // 0x0050 (size: 0x10)
    float SnowIntensity;                                                              // 0x0060 (size: 0x4)
    float SnowSparklesThreshold;                                                      // 0x0064 (size: 0x4)

}; // Size: 0x68

struct FPPSkyCreatorWeatherSettings
{
    FPPSkyCreatorSkyAtmosphereSettings SkyAtmosphereSettings;                         // 0x0000 (size: 0x80)
    FPPSkyCreatorVolumetricCloudSettings VolumetricCloudSettings;                     // 0x0080 (size: 0xA8)
    FPPSkyCreatorBackgroundCloudSettings BackgroundCloudSettings;                     // 0x0128 (size: 0x24)
    FPPSkyCreatorSkyLightSettings SkyLightSettings;                                   // 0x014C (size: 0x2C)
    FPPSkyCreatorSunLightSettings SunLightSettings;                                   // 0x0178 (size: 0x48)
    FPPSkyCreatorMoonLightSettings MoonLightSettings;                                 // 0x01C0 (size: 0x48)
    FPPSkyCreatorExponentialHeightFogSettings ExponentialHeightFogSettings;           // 0x0208 (size: 0x64)
    FPPSkyCreatorStarMapSettings StarMapSettings;                                     // 0x026C (size: 0x48)
    FPPSkyCreatorWeatherFXSettings WeatherFXSettings;                                 // 0x02B8 (size: 0x110)
    FPPSkyCreatorWeatherMaterialFXSettings WeatherMaterialFXSettings;                 // 0x03C8 (size: 0x68)
    FPPSkyCreatorWindSettings WindSettings;                                           // 0x0430 (size: 0x1C)
    FPPSkyCreatorPostProcessSettings PostProcessSettings;                             // 0x044C (size: 0xC)

}; // Size: 0x458

struct FPPSkyCreatorWindSettings
{
    float CloudWindDirection;                                                         // 0x0000 (size: 0x4)
    float CloudWindSpeed;                                                             // 0x0004 (size: 0x4)
    float CloudNoiseShapeWindDirection;                                               // 0x0008 (size: 0x4)
    float CloudNoiseShapeWindSpeedHorizontal;                                         // 0x000C (size: 0x4)
    float CloudNoiseDetailWindSpeedVertical;                                          // 0x0010 (size: 0x4)
    float PrecipitationWindDirection;                                                 // 0x0014 (size: 0x4)
    float PrecipitationWindSpeed;                                                     // 0x0018 (size: 0x4)

}; // Size: 0x1C

class APPSkyCreator : public AActor
{
    class USceneComponent* Root;                                                      // 0x0290 (size: 0x8)
    class UBillboardComponent* Billboard;                                             // 0x0298 (size: 0x8)
    class UStaticMeshComponent* Compass;                                              // 0x02A0 (size: 0x8)
    class USkyAtmosphereComponent* SkyAtmosphere;                                     // 0x02A8 (size: 0x8)
    class UVolumetricCloudComponent* VolumetricCloud;                                 // 0x02B0 (size: 0x8)
    class USkyLightComponent* SkyLight;                                               // 0x02B8 (size: 0x8)
    class UDirectionalLightComponent* SunLight;                                       // 0x02C0 (size: 0x8)
    class UDirectionalLightComponent* MoonLight;                                      // 0x02C8 (size: 0x8)
    class UExponentialHeightFogComponent* ExponentialHeightFog;                       // 0x02D0 (size: 0x8)
    class UPostProcessComponent* PostProcess;                                         // 0x02D8 (size: 0x8)
    class UStaticMeshComponent* StarMap;                                              // 0x02E0 (size: 0x8)
    class UStaticMeshComponent* SunSphere;                                            // 0x02E8 (size: 0x8)
    class UStaticMeshComponent* MoonSphere;                                           // 0x02F0 (size: 0x8)
    class USceneCaptureComponent2D* OcclusionCapture;                                 // 0x02F8 (size: 0x8)
    class UNiagaraComponent* WeatherFX;                                               // 0x0300 (size: 0x8)
    class UStaticMeshComponent* SkySphere;                                            // 0x0308 (size: 0x8)
    class UMaterialInterface* SkySphereMaterial;                                      // 0x0310 (size: 0x8)
    class UMaterialInstanceDynamic* SkySphereMID;                                     // 0x0318 (size: 0x8)
    bool bUseEditorTimeOfDay;                                                         // 0x0320 (size: 0x1)
    float EditorTimeOfDay;                                                            // 0x0324 (size: 0x4)
    bool bUseEditorWeatherSettings;                                                   // 0x0328 (size: 0x1)
    TEnumAsByte<EPPSkyCreatorEditorWeatherType> EditorWeatherType;                    // 0x0329 (size: 0x1)
    class UPPSkyCreatorWeatherPreset* EditorWeatherPreset;                            // 0x0330 (size: 0x8)
    FPPSkyCreatorWeatherSettings EditorWeatherSettings;                               // 0x0338 (size: 0x458)
    bool bIsUsedWithSequencer;                                                        // 0x0790 (size: 0x1)
    bool bIsEditorTickEnabled;                                                        // 0x0791 (size: 0x1)
    float TimeOfDay;                                                                  // 0x0794 (size: 0x4)
    FPPSkyCreatorWeatherSettings WeatherSettings;                                     // 0x0798 (size: 0x458)
    class UMaterialParameterCollection* CommonMPC;                                    // 0x0BF0 (size: 0x8)
    float SkySphereRadius;                                                            // 0x0BF8 (size: 0x4)
    bool bShowDebugVariables;                                                         // 0x0BFC (size: 0x1)
    TEnumAsByte<EPPSkyCreatorSunPositionType> SunPositionType;                        // 0x0BFD (size: 0x1)
    FPPCelestialPositionData SunPositionData;                                         // 0x0C00 (size: 0x8)
    TEnumAsByte<EPPSkyCreatorMoonPositionType> MoonPositionType;                      // 0x0C08 (size: 0x1)
    FPPCelestialPositionData MoonPositionData;                                        // 0x0C0C (size: 0x8)
    float SunriseTime;                                                                // 0x0C14 (size: 0x4)
    float SunsetTime;                                                                 // 0x0C18 (size: 0x4)
    float SunDawnOffsetTime;                                                          // 0x0C1C (size: 0x4)
    float SunDuskOffsetTime;                                                          // 0x0C20 (size: 0x4)
    float SunDawnTime;                                                                // 0x0C24 (size: 0x4)
    float SunDuskTime;                                                                // 0x0C28 (size: 0x4)
    float SunElevation;                                                               // 0x0C2C (size: 0x4)
    float SunAzimuth;                                                                 // 0x0C30 (size: 0x4)
    float SunMinAngleAtDawnDusk;                                                      // 0x0C34 (size: 0x4)
    float SunFadeInOutTime;                                                           // 0x0C38 (size: 0x4)
    float MoonriseTime;                                                               // 0x0C3C (size: 0x4)
    float MoonsetTime;                                                                // 0x0C40 (size: 0x4)
    float MoonElevation;                                                              // 0x0C44 (size: 0x4)
    float MoonAzimuth;                                                                // 0x0C48 (size: 0x4)
    float MoonFadeInOutTime;                                                          // 0x0C4C (size: 0x4)
    float Latitude;                                                                   // 0x0C50 (size: 0x4)
    float Longitude;                                                                  // 0x0C54 (size: 0x4)
    float TimeZone;                                                                   // 0x0C58 (size: 0x4)
    bool bDaylightSavingTime;                                                         // 0x0C5C (size: 0x1)
    int32 Year;                                                                       // 0x0C60 (size: 0x4)
    int32 Month;                                                                      // 0x0C64 (size: 0x4)
    int32 Day;                                                                        // 0x0C68 (size: 0x4)
    FDateTime Date;                                                                   // 0x0C70 (size: 0x8)
    bool bLightTransition;                                                            // 0x0C78 (size: 0x1)
    float SunSurfaceBrightness;                                                       // 0x0C7C (size: 0x4)
    float MoonSurfaceBrightness;                                                      // 0x0C80 (size: 0x4)
    float SunCurrentElevation;                                                        // 0x0C84 (size: 0x4)
    float TransitionStartSunAngle;                                                    // 0x0C88 (size: 0x4)
    float TransitionMiddleSunAngle;                                                   // 0x0C8C (size: 0x4)
    float TransitionEndSunAngle;                                                      // 0x0C90 (size: 0x4)
    float NightIntensityTransitionStartSunAngle;                                      // 0x0C94 (size: 0x4)
    float NightIntensityTransitionEndSunAngle;                                        // 0x0C98 (size: 0x4)
    TEnumAsByte<EComponentMobility::Type> SkyAtmosphereMobility;                      // 0x0C9C (size: 0x1)
    ESkyAtmosphereTransformMode TransformMode;                                        // 0x0C9D (size: 0x1)
    float PlanetRadius;                                                               // 0x0CA0 (size: 0x4)
    float AtmosphereHeight;                                                           // 0x0CA4 (size: 0x4)
    float AerialPespectiveViewDistanceScale;                                          // 0x0CA8 (size: 0x4)
    FVector PlanetTopPosition;                                                        // 0x0CB0 (size: 0x18)
    float TraceSampleCountScale;                                                      // 0x0CC8 (size: 0x4)
    float GodRaysResolution;                                                          // 0x0CCC (size: 0x4)
    float LayerBottomAltitude;                                                        // 0x0CD0 (size: 0x4)
    float LayerHeight;                                                                // 0x0CD4 (size: 0x4)
    float TracingStartMaxDistance;                                                    // 0x0CD8 (size: 0x4)
    float TracingMaxDistance;                                                         // 0x0CDC (size: 0x4)
    bool bPerSampleAtmosphericLightTransmittance;                                     // 0x0CE0 (size: 0x1)
    class UMaterialParameterCollection* VolumetricCloudsMPC;                          // 0x0CE8 (size: 0x8)
    FVector LayerBottomAltitudePosition;                                              // 0x0CF0 (size: 0x18)
    FVector LayerTopAltitudePosition;                                                 // 0x0D08 (size: 0x18)
    class UMaterialInterface* CurrentVolumetricCloudMaterial;                         // 0x0D20 (size: 0x8)
    class UMaterialInstanceDynamic* VolumetricCloudMID;                               // 0x0D28 (size: 0x8)
    class UMaterialInterface* VolumetricCloudDensitySampleMaterial;                   // 0x0D30 (size: 0x8)
    class UMaterialInstanceDynamic* VolumetricCloudDensitySampleMID;                  // 0x0D38 (size: 0x8)
    class UTextureRenderTarget2D* VolumetricCloudDensitySampleRT;                     // 0x0D40 (size: 0x8)
    bool bCinematicQuality;                                                           // 0x0D48 (size: 0x1)
    TEnumAsByte<EPPVolumetricCloudRenderTargetMode> RenderMode;                       // 0x0D49 (size: 0x1)
    bool bHighQualityAerialPerspective;                                               // 0x0D4A (size: 0x1)
    int32 MultiScatteringApproximationOctaveCount;                                    // 0x0D4C (size: 0x4)
    bool bGroundContribution;                                                         // 0x0D50 (size: 0x1)
    bool bRayMarchVolumeShadow;                                                       // 0x0D51 (size: 0x1)
    float ViewSampleCountScale;                                                       // 0x0D54 (size: 0x4)
    float ReflectionSampleCountScale;                                                 // 0x0D58 (size: 0x4)
    float ShadowViewSampleCountScale;                                                 // 0x0D5C (size: 0x4)
    float ShadowReflectionSampleCountScale;                                           // 0x0D60 (size: 0x4)
    float ShadowTracingDistance;                                                      // 0x0D64 (size: 0x4)
    float CloudMapScale;                                                              // 0x0D68 (size: 0x4)
    FVector2D CloudMapOffset;                                                         // 0x0D70 (size: 0x10)
    float CoverageVariationMapScale;                                                  // 0x0D80 (size: 0x4)
    TEnumAsByte<EPPVolumetricCloudNoiseShapeResolution> NoiseShapeResolution;         // 0x0D84 (size: 0x1)
    TEnumAsByte<EPPVolumetricCloudNoiseDetailResolution> NoiseDetailResolution;       // 0x0D85 (size: 0x1)
    float NoiseShapeScale;                                                            // 0x0D88 (size: 0x4)
    float NoiseDetailScale;                                                           // 0x0D8C (size: 0x4)
    float TurbulenceScale;                                                            // 0x0D90 (size: 0x4)
    float BackgroundCloudsContrast;                                                   // 0x0D94 (size: 0x4)
    float BackgroundCloudsReflectionScale;                                            // 0x0D98 (size: 0x4)
    TEnumAsByte<EComponentMobility::Type> SkyLightMobility;                           // 0x0D9C (size: 0x1)
    bool bRealTimeCapture;                                                            // 0x0D9D (size: 0x1)
    bool bSkyLightCaptureTimeSlice;                                                   // 0x0D9E (size: 0x1)
    bool bLowerHemisphereIsSolidColor;                                                // 0x0D9F (size: 0x1)
    bool bCloudAmbientOcclusion;                                                      // 0x0DA0 (size: 0x1)
    float CloudAmbientOcclusionExtent;                                                // 0x0DA4 (size: 0x4)
    float CloudAmbientOcclusionMapResolutionScale;                                    // 0x0DA8 (size: 0x4)
    float CloudAmbientOcclusionApertureScale;                                         // 0x0DAC (size: 0x4)
    TEnumAsByte<EComponentMobility::Type> SunLightMobility;                           // 0x0DB0 (size: 0x1)
    bool bControlSunDirection;                                                        // 0x0DB1 (size: 0x1)
    bool bSunConstantIntensity;                                                       // 0x0DB2 (size: 0x1)
    float SunIntensity;                                                               // 0x0DB4 (size: 0x4)
    float SunCurrentIntensity;                                                        // 0x0DB8 (size: 0x4)
    bool bSunUseTemperature;                                                          // 0x0DBC (size: 0x1)
    float SunDiskSize;                                                                // 0x0DC0 (size: 0x4)
    bool bSunConstantAtmosphereDiskColorScale;                                        // 0x0DC4 (size: 0x1)
    FLinearColor SunAtmosphereDiskColorScale;                                         // 0x0DC8 (size: 0x10)
    bool bSunPerPixelAtmosphereTransmittance;                                         // 0x0DD8 (size: 0x1)
    float SunCloudShadowExtent;                                                       // 0x0DDC (size: 0x4)
    float SunCloudShadowMapResolutionScale;                                           // 0x0DE0 (size: 0x4)
    float SunCloudShadowRaySampleCountScale;                                          // 0x0DE4 (size: 0x4)
    TEnumAsByte<EComponentMobility::Type> MoonLightMobility;                          // 0x0DE8 (size: 0x1)
    bool bControlMoonDirection;                                                       // 0x0DE9 (size: 0x1)
    bool bMoonConstantIntensity;                                                      // 0x0DEA (size: 0x1)
    float MoonIntensity;                                                              // 0x0DEC (size: 0x4)
    float MoonCurrentIntensity;                                                       // 0x0DF0 (size: 0x4)
    bool bMoonUseTemperature;                                                         // 0x0DF4 (size: 0x1)
    float MoonDiskSize;                                                               // 0x0DF8 (size: 0x4)
    float MoonRotation;                                                               // 0x0DFC (size: 0x4)
    float MoonPhase;                                                                  // 0x0E00 (size: 0x4)
    bool bMoonPhaseLightIntensityScale;                                               // 0x0E04 (size: 0x1)
    float MoonPhaseLightIntensityMinScale;                                            // 0x0E08 (size: 0x4)
    float MoonPhaseLightIntensityMaxScale;                                            // 0x0E0C (size: 0x4)
    bool bMoonConstantAtmosphereDiskColorScale;                                       // 0x0E10 (size: 0x1)
    FLinearColor MoonAtmosphereDiskColorScale;                                        // 0x0E14 (size: 0x10)
    bool bMoonPerPixelAtmosphereTransmittance;                                        // 0x0E24 (size: 0x1)
    float MoonCloudShadowExtent;                                                      // 0x0E28 (size: 0x4)
    float MoonCloudShadowMapResolutionScale;                                          // 0x0E2C (size: 0x4)
    float MoonCloudShadowRaySampleCountScale;                                         // 0x0E30 (size: 0x4)
    TEnumAsByte<EComponentMobility::Type> ExponentialHeightFogMobility;               // 0x0E34 (size: 0x1)
    bool bEnableExponentialHeightFog;                                                 // 0x0E35 (size: 0x1)
    bool bVolumetricFog;                                                              // 0x0E36 (size: 0x1)
    float FogHeightOffset;                                                            // 0x0E38 (size: 0x4)
    float SecondFogHeightOffset;                                                      // 0x0E3C (size: 0x4)
    class UTexture2D* StarMapTexture;                                                 // 0x0E40 (size: 0x8)
    TEnumAsByte<EPPSkyCreatorStarMapRotationType> StarMapRotationType;                // 0x0E48 (size: 0x1)
    FVector StarMapAdditionalRotation;                                                // 0x0E50 (size: 0x18)
    bool bEnableOcclusionCapture;                                                     // 0x0E68 (size: 0x1)
    class UTextureRenderTarget2D* OcclusionRenderTarget;                              // 0x0E70 (size: 0x8)
    float OcclusionCaptureWidth;                                                      // 0x0E78 (size: 0x4)
    float OcclusionCaptureHeight;                                                     // 0x0E7C (size: 0x4)
    bool bOcclusionCaptureRealtimeUpdate;                                             // 0x0E80 (size: 0x1)
    float OcclusionCaptureStepDistance;                                               // 0x0E84 (size: 0x4)
    float OcclusionCaptureStepSize;                                                   // 0x0E88 (size: 0x4)
    float OcclusionBias;                                                              // 0x0E8C (size: 0x4)
    int32 OcclusionBlurSamples;                                                       // 0x0E90 (size: 0x4)
    float OcclusionBlurDistance;                                                      // 0x0E94 (size: 0x4)
    float OcclusionMaskFadeHardness;                                                  // 0x0E98 (size: 0x4)
    FVector CameraLocation;                                                           // 0x0EA0 (size: 0x18)
    FVector CameraLocationSnapped;                                                    // 0x0EB8 (size: 0x18)
    FVector OcclusionCurrentLocation;                                                 // 0x0ED0 (size: 0x18)
    float WeatherFXCutoffWorldHeight;                                                 // 0x0EE8 (size: 0x4)
    float WeatherFXCutoffSoftness;                                                    // 0x0EEC (size: 0x4)
    float PrecipitationSpawnRadius;                                                   // 0x0EF0 (size: 0x4)
    bool bEnableGPUPrecipitation;                                                     // 0x0EF4 (size: 0x1)
    float PrecipitationSpawnRadiusGPU;                                                // 0x0EF8 (size: 0x4)
    float PrecipitationMaxViewDistance;                                               // 0x0EFC (size: 0x4)
    float PrecipitationVerticalCheckDistance;                                         // 0x0F00 (size: 0x4)
    TEnumAsByte<ECollisionChannel> PrecipitationCollisionChannel;                     // 0x0F04 (size: 0x1)
    float PrecipitationDepthFadeDistance;                                             // 0x0F08 (size: 0x4)
    float PrecipitationCameraFadeDistance;                                            // 0x0F0C (size: 0x4)
    float PrecipitationCameraFadeOffset;                                              // 0x0F10 (size: 0x4)
    float RainSpawnRateMaxCPU;                                                        // 0x0F14 (size: 0x4)
    float RainSpawnRateMaxGPU;                                                        // 0x0F18 (size: 0x4)
    float RainDistanceScaleFactor;                                                    // 0x0F1C (size: 0x4)
    float RainCameraMotionAlignmentScale;                                             // 0x0F20 (size: 0x4)
    float RainVelocityElongationScale;                                                // 0x0F24 (size: 0x4)
    float RainMaskHardness;                                                           // 0x0F28 (size: 0x4)
    float RainSplashSpawnRateMax;                                                     // 0x0F2C (size: 0x4)
    float RainSplashSpawnRateMaxGPU;                                                  // 0x0F30 (size: 0x4)
    float SnowSpawnRateMaxCPU;                                                        // 0x0F34 (size: 0x4)
    float SnowSpawnRateMaxGPU;                                                        // 0x0F38 (size: 0x4)
    float SnowDistanceScaleFactor;                                                    // 0x0F3C (size: 0x4)
    float SnowCameraMotionAlignmentScale;                                             // 0x0F40 (size: 0x4)
    float SnowVelocityElongationScale;                                                // 0x0F44 (size: 0x4)
    float SnowMaskHardness;                                                           // 0x0F48 (size: 0x4)
    class UTextureRenderTarget2D* LightningsParametersRT;                             // 0x0F50 (size: 0x8)
    TArray<FPPSkyCreatorLightningParameters> LightningParameters;                     // 0x0F58 (size: 0x10)
    float CurrentLightningInterval;                                                   // 0x0F70 (size: 0x4)
    FVector LastLightningPosition;                                                    // 0x0F78 (size: 0x18)
    TArray<FVector> LightningAvailablePositions;                                      // 0x0F90 (size: 0x10)
    int32 LightningCurrentIndex;                                                      // 0x0FA0 (size: 0x4)
    bool bSampleCloudDensity;                                                         // 0x0FA4 (size: 0x1)
    int32 LightningMaxSamples;                                                        // 0x0FA8 (size: 0x4)
    float LightningSpawnInnerRadius;                                                  // 0x0FAC (size: 0x4)
    float LightningSpawnOuterRadius;                                                  // 0x0FB0 (size: 0x4)
    float LightningRandomDegreeInConeMax;                                             // 0x0FB4 (size: 0x4)
    float LightningBoltEmissiveScale;                                                 // 0x0FB8 (size: 0x4)
    float LightningFlashFadeUpdateRate;                                               // 0x0FC8 (size: 0x4)
    float LightningFlashFadeDelta;                                                    // 0x0FCC (size: 0x4)
    float LightningFlashEmissiveScale;                                                // 0x0FD0 (size: 0x4)
    float LightningFlashEmissiveReflectionScale;                                      // 0x0FD4 (size: 0x4)
    float LightningFlashRadiusScale;                                                  // 0x0FD8 (size: 0x4)
    float LightningFlashFadeSpeed;                                                    // 0x0FDC (size: 0x4)
    float RainbowDistance;                                                            // 0x0FE0 (size: 0x4)
    float RainbowDepthFadeDistance;                                                   // 0x0FE4 (size: 0x4)
    float MaterialFXCutoffWorldHeight;                                                // 0x0FE8 (size: 0x4)
    float MaterialFXCutoffSoftness;                                                   // 0x0FEC (size: 0x4)
    float WetnessSlopeAngle;                                                          // 0x0FF0 (size: 0x4)
    float WetnessSlopeSmoothness;                                                     // 0x0FF4 (size: 0x4)
    float PuddlesMaskScale;                                                           // 0x0FF8 (size: 0x4)
    float PuddlesRoughness;                                                           // 0x0FFC (size: 0x4)
    float PuddlesSlopeAngle;                                                          // 0x1000 (size: 0x4)
    float PuddlesSlopeSmoothness;                                                     // 0x1004 (size: 0x4)
    bool bEnableRainRipplesSolver;                                                    // 0x1008 (size: 0x1)
    bool bPauseRainRipplesSolver;                                                     // 0x1009 (size: 0x1)
    float RainRipplesUpdateRate;                                                      // 0x1018 (size: 0x4)
    float RainRipplesScale;                                                           // 0x101C (size: 0x4)
    float RainRipplesMaxDensity;                                                      // 0x1020 (size: 0x4)
    float WindRipplesScale;                                                           // 0x1024 (size: 0x4)
    float RainRipplesSolverDelta;                                                     // 0x1028 (size: 0x4)
    int32 RainRipplesSolverHeightState;                                               // 0x102C (size: 0x4)
    class UMaterialInterface* RainRipplesPropagation;                                 // 0x1030 (size: 0x8)
    class UMaterialInstanceDynamic* RainRipplesPropagationMID;                        // 0x1038 (size: 0x8)
    class UMaterialInterface* RainRipplesForce;                                       // 0x1040 (size: 0x8)
    class UMaterialInterface* RainRipplesNormal;                                      // 0x1048 (size: 0x8)
    class UMaterialInstanceDynamic* RainRipplesNormalMID;                             // 0x1050 (size: 0x8)
    class UTextureRenderTarget2D* RainRipplesPropagationFrame0;                       // 0x1058 (size: 0x8)
    class UTextureRenderTarget2D* RainRipplesPropagationFrame1;                       // 0x1060 (size: 0x8)
    class UTextureRenderTarget2D* RainRipplesPropagationFrame2;                       // 0x1068 (size: 0x8)
    class UTextureRenderTarget2D* RainRipplesNormalRT;                                // 0x1070 (size: 0x8)
    float SnowMaskScale;                                                              // 0x1078 (size: 0x4)
    float SnowScale;                                                                  // 0x107C (size: 0x4)
    float SnowRoughness;                                                              // 0x1080 (size: 0x4)
    float SnowSparklesScale;                                                          // 0x1084 (size: 0x4)
    float SnowSparklesRoughness;                                                      // 0x1088 (size: 0x4)
    float SnowSlopeAngle;                                                             // 0x108C (size: 0x4)
    float SnowSlopeSmoothness;                                                        // 0x1090 (size: 0x4)
    bool bEnableWind;                                                                 // 0x1094 (size: 0x1)
    bool bIndependentWindControl;                                                     // 0x1095 (size: 0x1)
    FPPSkyCreatorWindSettings EditorIndependentWindSettings;                          // 0x1098 (size: 0x1C)
    float CloudWindSkewAmount;                                                        // 0x10B4 (size: 0x4)
    FVector CloudWindOffset;                                                          // 0x10B8 (size: 0x18)
    FVector CloudWindSkewDirection;                                                   // 0x10D0 (size: 0x18)
    float CloudWindSkewForce;                                                         // 0x10E8 (size: 0x4)
    FVector CloudNoiseShapeWindOffset;                                                // 0x10F0 (size: 0x18)
    FVector CloudNoiseDetailWindOffset;                                               // 0x1108 (size: 0x18)
    bool bUseExposureSettings;                                                        // 0x1120 (size: 0x1)
    bool bExtendDefaultLuminanceRange;                                                // 0x1121 (size: 0x1)
    float PostProcessPriority;                                                        // 0x1124 (size: 0x4)
    TEnumAsByte<EAutoExposureMethod> ExposureMethod;                                  // 0x1128 (size: 0x1)
    class UCurveFloat* ExposureBiasCurve;                                             // 0x1130 (size: 0x8)
    class UTexture* ExposureMeterMask;                                                // 0x1138 (size: 0x8)
    float ExposureMinBrightness;                                                      // 0x1140 (size: 0x4)
    float ExposureMaxBrightness;                                                      // 0x1144 (size: 0x4)
    float ExposureMinEV100;                                                           // 0x1148 (size: 0x4)
    float ExposureMaxEV100;                                                           // 0x114C (size: 0x4)
    float ExposureSpeedUp;                                                            // 0x1150 (size: 0x4)
    float ExposureSpeedDown;                                                          // 0x1154 (size: 0x4)
    float ExposureLowPercent;                                                         // 0x1158 (size: 0x4)
    float ExposureHighPercent;                                                        // 0x115C (size: 0x4)
    float ExposureHistogramLogMin;                                                    // 0x1160 (size: 0x4)
    float ExposureHistogramLogMax;                                                    // 0x1164 (size: 0x4)
    float ExposureHistogramMinEV100;                                                  // 0x1168 (size: 0x4)
    float ExposureHistogramMaxEV100;                                                  // 0x116C (size: 0x4)
    FPPSkyCreatorOnLightningStrike OnLightningStrike;                                 // 0x1170 (size: 0x10)
    void OnLightningStrike(FVector LightningPosition);

    void UpdateSettingsSequencer();
    void SpawnLightningStrike(FVector LightningPosition);
    void SetYear(int32 NewValue);
    void SetWindSettings(FPPSkyCreatorWindSettings InWindSettings);
    void SetWindIndependentSettings(FPPSkyCreatorWindSettings InWindSettings);
    void SetWeatherSettings(FPPSkyCreatorWeatherSettings InWeatherSettings);
    void SetWeatherMaterialFXSettings(FPPSkyCreatorWeatherMaterialFXSettings InWeatherMaterialFXSettings);
    void SetWeatherFXSettings(FPPSkyCreatorWeatherFXSettings InWeatherFXSettings);
    void SetVolumetricCloudSettings(FPPSkyCreatorVolumetricCloudSettings InVolumetricCloudSettings);
    void SetTimeZone(float NewValue);
    void SetTime(float InTime);
    void SetSunSimplePositionSettings(const float InSunriseTime, const float InSunsetTime, const float InSunElevation, const float InSunAzimuth);
    void SetSunsetTime(float NewValue);
    void SetSunriseTime(float NewValue);
    void SetSunMinAngleAtDawnDusk(float NewValue);
    void SetSunLightSettings(FPPSkyCreatorSunLightSettings InSunLightSettings);
    void SetSunIntensity(float NewValue);
    void SetSunElevation(float NewValue);
    void SetSunDuskOffsetTime(float NewValue);
    void SetSunDiskSize(float NewValue);
    void SetSunDawnOffsetTime(float NewValue);
    void SetSunAzimuth(float NewValue);
    void SetSunAtmosphereDiskColorScale(FLinearColor NewValue);
    void SetStarMapSettings(FPPSkyCreatorStarMapSettings InStarMapSettings);
    void SetStarMapAdditionalRotation(FVector NewValue);
    void SetSkyLightSettings(FPPSkyCreatorSkyLightSettings InSkyLightSettings);
    void SetSkyAtmosphereSettings(FPPSkyCreatorSkyAtmosphereSettings InSkyAtmosphereSettings);
    void SetRealPositionSettings(const float InLatitude, const float InLongitude, const float InTimeZone, const bool InbDaylightSavingTime, const int32 InYear, const int32 InMonth, const int32 InDay);
    void SetPostProcessSettings(FPPSkyCreatorPostProcessSettings InPostProcessSettings);
    void SetMoonSimplePositionSettings(const float InMoonriseTime, const float InMoonsetTime, const float InMoonElevation, const float InMoonAzimuth);
    void SetMoonsetTime(float NewValue);
    void SetMoonRotation(float NewValue);
    void SetMoonriseTime(float NewValue);
    void SetMoonPhase(float NewValue);
    void SetMoonLightSettings(FPPSkyCreatorMoonLightSettings InMoonLightSettings);
    void SetMoonIntensity(float NewValue);
    void SetMoonElevation(float NewValue);
    void SetMoonDiskSize(float NewValue);
    void SetMoonAzimuth(float NewValue);
    void SetMoonAtmosphereDiskColorScale(FLinearColor NewValue);
    void SetMonth(int32 NewValue);
    void SetLongitude(float NewValue);
    void SetLayerHeight(float NewValue);
    void SetLayerBottomAltitude(float NewValue);
    void SetLatitude(float NewValue);
    void SetExponentialHeightFogSettings(FPPSkyCreatorExponentialHeightFogSettings InExponentialHeightFogSettings);
    void SetEditorWeatherSettings(FPPSkyCreatorWeatherSettings NewValue);
    void SetEditorWeatherPreset(class UPPSkyCreatorWeatherPreset* NewValue);
    void SetEditorTimeOfDay(float NewValue);
    void SetDay(int32 NewValue);
    void SetCloudMapOffset(FVector2D NewValue);
    void SetbDaylightSavingTime(bool NewValue);
    void SetBackgroundCloudSettings(FPPSkyCreatorBackgroundCloudSettings InBackgroundCloudSettings);
    void RealtimeTimeOfDay(float DeltaSeconds, float DayCycleDuration);
    void OnRep_UpdateWeather();
    void OnRep_UpdateTime();
    void LerpWindSettings(FPPSkyCreatorWindSettings InWindSettingsA, FPPSkyCreatorWindSettings InWindSettingsB, float Alpha);
    void LerpWindIndependentSettings(FPPSkyCreatorWindSettings InWindSettingsA, FPPSkyCreatorWindSettings InWindSettingsB, float Alpha);
    void LerpWetnessAmount(float WetnessAmountA, float WetnessAmountB, float Alpha);
    void LerpWeatherSettings(FPPSkyCreatorWeatherSettings InWeatherSettingsA, FPPSkyCreatorWeatherSettings InWeatherSettingsB, float Alpha);
    void LerpWeatherMaterialFXSettings(FPPSkyCreatorWeatherMaterialFXSettings InWeatherMaterialFXSettingsA, FPPSkyCreatorWeatherMaterialFXSettings InWeatherMaterialFXSettingsB, float Alpha);
    void LerpWeatherFXSettings(FPPSkyCreatorWeatherFXSettings InWeatherFXSettingsA, FPPSkyCreatorWeatherFXSettings InWeatherFXSettingsB, float Alpha);
    void LerpVolumetricCloudSettings(FPPSkyCreatorVolumetricCloudSettings InVolumetricCloudSettingsA, FPPSkyCreatorVolumetricCloudSettings InVolumetricCloudSettingsB, float Alpha);
    void LerpSunLightSettings(FPPSkyCreatorSunLightSettings InSunLightSettingsA, FPPSkyCreatorSunLightSettings InSunLightSettingsB, float Alpha);
    void LerpStarMapSettings(FPPSkyCreatorStarMapSettings InStarMapSettingsA, FPPSkyCreatorStarMapSettings InStarMapSettingsB, float Alpha);
    void LerpSnowAmount(float SnowAmountA, float SnowAmountB, float Alpha);
    void LerpSkyLightSettings(FPPSkyCreatorSkyLightSettings InSkyLightSettingsA, FPPSkyCreatorSkyLightSettings InSkyLightSettingsB, float Alpha);
    void LerpSkyAtmosphereSettings(FPPSkyCreatorSkyAtmosphereSettings InSkyAtmosphereSettingsA, FPPSkyCreatorSkyAtmosphereSettings InSkyAtmosphereSettingsB, float Alpha);
    void LerpPuddlesAmount(float PuddlesAmountA, float PuddlesAmountB, float Alpha);
    void LerpPostProcessSettings(FPPSkyCreatorPostProcessSettings InPostProcessSettingsA, FPPSkyCreatorPostProcessSettings InPostProcessSettingsB, float Alpha);
    void LerpMoonLightSettings(FPPSkyCreatorMoonLightSettings InMoonLightSettingsA, FPPSkyCreatorMoonLightSettings InMoonLightSettingsB, float Alpha);
    void LerpExponentialHeightFogSettings(FPPSkyCreatorExponentialHeightFogSettings InExponentialHeightFogSettingsA, FPPSkyCreatorExponentialHeightFogSettings InExponentialHeightFogSettingsB, float Alpha);
    void LerpBackgroundCloudSettings(FPPSkyCreatorBackgroundCloudSettings InBackgroundCloudSettingsA, FPPSkyCreatorBackgroundCloudSettings InBackgroundCloudSettingsB, float Alpha);
    FPPSkyCreatorWindSettings GetWindSettings();
    FPPSkyCreatorWeatherSettings GetWeatherSettings();
    FPPSkyCreatorWeatherMaterialFXSettings GetWeatherMaterialFXSettings();
    FPPSkyCreatorWeatherFXSettings GetWeatherFXSettings();
    FPPSkyCreatorVolumetricCloudSettings GetVolumetricCloudSettings();
    float GetTime();
    FRotator GetSunPosition(float Time);
    FPPSkyCreatorSunLightSettings GetSunLightSettings();
    FPPSkyCreatorStarMapSettings GetStarMapSettings();
    FRotator GetStarMapRotation();
    FPPSkyCreatorSkyLightSettings GetSkyLightSettings();
    FPPSkyCreatorSkyAtmosphereSettings GetSkyAtmosphereSettings();
    FPPSkyCreatorPostProcessSettings GetPostProcessSettings();
    FRotator GetMoonPosition(float Time);
    float GetMoonPhase();
    FPPSkyCreatorMoonLightSettings GetMoonLightSettings();
    FVector GetLastLightningPosition();
    FPPSkyCreatorExponentialHeightFogSettings GetExponentialHeightFogSettings();
    float GetCloudDensityAtPosition(FVector Position);
    FPPSkyCreatorBackgroundCloudSettings GetBackgroundCloudSettings();
    bool FindLightningPosition(FVector Position, FVector& OutPosition);
}; // Size: 0x1180

class UPPSkyCreatorFunctionLibrary : public UBlueprintFunctionLibrary
{

    float KilometersToCentimeters(const float Value);
    bool IsApplicationForegroundNow();
    FPPCelestialPositionData GetRealSunPosition(const float Latitude, const float Longitude, const float TimeZone, const bool bIsDaylightSavingTime, const FDateTime DateTime);
    FPPCelestialPositionData GetRealMoonPosition(const float Latitude, const float Longitude, const float TimeZone, const bool bIsDaylightSavingTime, const FDateTime DateTime);
    float GetCloudDensityAtPosition(class UObject* WorldContextObject, FVector Position, class UMaterialParameterCollection* ParameterCollection, class UMaterialInterface* Material, class UTextureRenderTarget2D* RenderTarget);
    bool FindLightningPosition(class UObject* WorldContextObject, bool bSampleCloudDensity, int32 Samples, class UMaterialParameterCollection* ParameterCollection, class UMaterialInterface* Material, class UTextureRenderTarget2D* RenderTarget, FVector Position, float InnerRadius, float OuterRadius, float minHeight, float maxHeight, float DensityThreshold, FVector& OutPosition);
    double ElevationRefraction(double F);
    class UTexture2D* DynamicConvertRenderTargetToTexture2D(class UTextureRenderTarget2D* RenderTarget);
    void CreateAndAssignMID(class UObject* WorldContextObject, class UMaterialInterface* InMaterial, class UMaterialInstanceDynamic*& InMID);
    void ConvertRenderTargetToTexture2D(class UTextureRenderTarget2D* RenderTarget, class UTexture2D*& Texture);
    bool CheckCloudDensityAtPosition(class UObject* WorldContextObject, FVector Position, class UMaterialParameterCollection* ParameterCollection, class UMaterialInterface* Material, class UTextureRenderTarget2D* RenderTarget);
    float CentimetersToKilometers(const float Value);
}; // Size: 0x28

class UPPSkyCreatorWeatherPreset : public UDataAsset
{
    FText Description;                                                                // 0x0030 (size: 0x18)
    FPPSkyCreatorSkyAtmosphereSettings SkyAtmosphereSettings;                         // 0x0048 (size: 0x80)
    FPPSkyCreatorVolumetricCloudSettings VolumetricCloudSettings;                     // 0x00C8 (size: 0xA8)
    FPPSkyCreatorBackgroundCloudSettings BackgroundCloudSettings;                     // 0x0170 (size: 0x24)
    FPPSkyCreatorSkyLightSettings SkyLightSettings;                                   // 0x0194 (size: 0x2C)
    FPPSkyCreatorSunLightSettings SunLightSettings;                                   // 0x01C0 (size: 0x48)
    FPPSkyCreatorMoonLightSettings MoonLightSettings;                                 // 0x0208 (size: 0x48)
    FPPSkyCreatorExponentialHeightFogSettings ExponentialHeightFogSettings;           // 0x0250 (size: 0x64)
    FPPSkyCreatorStarMapSettings StarMapSettings;                                     // 0x02B4 (size: 0x48)
    FPPSkyCreatorWeatherFXSettings WeatherFXSettings;                                 // 0x0300 (size: 0x110)
    FPPSkyCreatorWeatherMaterialFXSettings WeatherMaterialFXSettings;                 // 0x0410 (size: 0x68)
    FPPSkyCreatorWindSettings WindSettings;                                           // 0x0478 (size: 0x1C)
    FPPSkyCreatorPostProcessSettings PostProcessSettings;                             // 0x0494 (size: 0xC)

    FPPSkyCreatorWeatherSettings GetWeatherPresetSettings();
}; // Size: 0x4A0

#endif
