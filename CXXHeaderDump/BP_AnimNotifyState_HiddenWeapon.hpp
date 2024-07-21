#ifndef UE4SS_SDK_BP_AnimNotifyState_HiddenWeapon_HPP
#define UE4SS_SDK_BP_AnimNotifyState_HiddenWeapon_HPP

class UBP_AnimNotifyState_HiddenWeapon_C : public UAnimNotifyState
{

    FString GetNotifyName();
    bool Received_NotifyEnd(class USkeletalMeshComponent* MeshComp, class UAnimSequenceBase* Animation, const FAnimNotifyEventReference& EventReference);
    bool Received_NotifyBegin(class USkeletalMeshComponent* MeshComp, class UAnimSequenceBase* Animation, float TotalDuration, const FAnimNotifyEventReference& EventReference);
}; // Size: 0x30

#endif
