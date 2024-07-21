#ifndef UE4SS_SDK_BP_CoopSkillSearchEffectController_HPP
#define UE4SS_SDK_BP_CoopSkillSearchEffectController_HPP

class UBP_CoopSkillSearchEffectController_C : public UPalCoopSkillSearchEffectController
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0028 (size: 0x8)
    double FadeOutSec;                                                                // 0x0030 (size: 0x8)
    double FadeOutElapsed;                                                            // 0x0038 (size: 0x8)
    bool isEffectExtends;                                                             // 0x0040 (size: 0x1)
    bool isEffectFadeOut;                                                             // 0x0041 (size: 0x1)
    double SearchRadiusFrom;                                                          // 0x0048 (size: 0x8)
    double SearchRadiusTo;                                                            // 0x0050 (size: 0x8)
    double ExtSearchRadiusPerSec;                                                     // 0x0058 (size: 0x8)
    double SearchRadiusElapsed;                                                       // 0x0060 (size: 0x8)

    bool IsRunning();
    bool IsFinished();
    void GetCurrentSearchRadius(double& CurrentRadius);
    void ProcTick(double DeltaTime);
    void ProcStart(FVector Origin, double RadiusFrom, double RadiusTo, double ExtRadiusPerSec);
    void FadeOut(double DeltaTime);
    void ExtendEffect(double DeltaTime, double CurrentSearchRadius);
    void Start(const FVector& Origin, float RadiusFrom, float RadiusTo, float ExtRadiusPerSec);
    void Tick(float DeltaTime);
    void End();
    void ExecuteUbergraph_BP_CoopSkillSearchEffectController(int32 EntryPoint);
}; // Size: 0x68

#endif
