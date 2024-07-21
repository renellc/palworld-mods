#ifndef UE4SS_SDK_BP_AnimNotifyState_PlaySound_HPP
#define UE4SS_SDK_BP_AnimNotifyState_PlaySound_HPP

class UBP_AnimNotifyState_PlaySound_C : public UAnimNotifyState
{
    bool Mute;                                                                        // 0x0030 (size: 0x1)
    FPalDataTableRowName_SoundID SoundId;                                             // 0x0034 (size: 0x8)
    bool StopOnNotifyEnded;                                                           // 0x003C (size: 0x1)
    FPalSoundOptions SoundOption;                                                     // 0x0040 (size: 0x4)
    FName SocketName;                                                                 // 0x0044 (size: 0x8)
    TSoftClassPtr<UPalSoundSlot> DebugSoundSlot;                                      // 0x0050 (size: 0x30)
    TEnumAsByte<EPhysicalSurface> DebugPhysicsMaterial;                               // 0x0080 (size: 0x1)

    bool PlaySound_Editor(class UMeshComponent* MeshComp);
    void PlaySound(class UMeshComponent* MeshComp);
    void Get Raycast Location(class UMeshComponent* Mesh, FVector& St, FVector& Ed);
    bool Received_NotifyEnd(class USkeletalMeshComponent* MeshComp, class UAnimSequenceBase* Animation, const FAnimNotifyEventReference& EventReference);
    bool Received_NotifyBegin(class USkeletalMeshComponent* MeshComp, class UAnimSequenceBase* Animation, float TotalDuration, const FAnimNotifyEventReference& EventReference);
}; // Size: 0x81

#endif
