#ifndef UE4SS_SDK_BP_AnimNotifyState_DisableFootIK_HPP
#define UE4SS_SDK_BP_AnimNotifyState_DisableFootIK_HPP

class UBP_AnimNotifyState_DisableFootIK_C : public UAnimNotifyState
{

    bool Received_NotifyEnd(class USkeletalMeshComponent* MeshComp, class UAnimSequenceBase* Animation, const FAnimNotifyEventReference& EventReference);
    bool Received_NotifyBegin(class USkeletalMeshComponent* MeshComp, class UAnimSequenceBase* Animation, float TotalDuration, const FAnimNotifyEventReference& EventReference);
    FString GetNotifyName();
}; // Size: 0x30

#endif
