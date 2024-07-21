#ifndef UE4SS_SDK_BP_AnimNotify_FootStep_HPP
#define UE4SS_SDK_BP_AnimNotify_FootStep_HPP

class UBP_AnimNotify_FootStep_C : public UPalAnimNotify_FootStep
{
    double InWaterRate_Feet;                                                          // 0x0070 (size: 0x8)
    double Effect_Offset_Z_Feet;                                                      // 0x0078 (size: 0x8)
    bool Mute;                                                                        // 0x0080 (size: 0x1)
    EPalLandingType LandingType;                                                      // 0x0081 (size: 0x1)
    EPalFootType FootType;                                                            // 0x0082 (size: 0x1)
    TSoftClassPtr<UPalSoundSlot> DebugSoundSlot;                                      // 0x0088 (size: 0x30)
    TEnumAsByte<EPhysicalSurface> DebugPhysicsMaterial;                               // 0x00B8 (size: 0x1)
    int32 StepCount;                                                                  // 0x00BC (size: 0x4)

    void IsSwimming(class AActor* Owner, bool& IsSwimming);
    void CreateFootstepDecal(class AActor* Owner, FTransform FootTransform);
    void MakeSwitchStatePalSize(class APalMonsterCharacter* Pal, FString& PalSize);
    void IsPlaySound(bool& PlaySound);
    void SpawnRollStepEffect(class AActor* Owner);
    void IsSteppingShallows(class AActor* ownerActor, bool& NewParam);
    void PlayStepSound(class AActor* Owner);
    void PlaySound(class AActor* Owner, FPalDataTableRowName_SoundID SoundId);
    void IsFootStepRun(class AActor* Owner, bool& IsFootStepRun);
    void Get Foot Transform(class AActor* Owner, EPalFootType FootType, FTransform& NewTransform);
    void CreateEffect(class AActor* Owner, FTransform FootTransform, EPalLandingType NewParam, TEnumAsByte<EPhysicalSurface> PhysicalSurface);
    void Create Foot Step Effect(class AActor* ownerActor, FTransform FootTransform);
    void ProcJumpLanding(class AActor* Owner, EPalFootType FootType);
    void ProcFootStep(class AActor* Owner, EPalFootType FootType);
    bool Received_Notify(class USkeletalMeshComponent* MeshComp, class UAnimSequenceBase* Animation, const FAnimNotifyEventReference& EventReference);
}; // Size: 0xC0

#endif
