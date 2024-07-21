#ifndef UE4SS_SDK_BP_Action_RaidBossModeChange_HPP
#define UE4SS_SDK_BP_Action_RaidBossModeChange_HPP

class UBP_Action_RaidBossModeChange_C : public UPalActionBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0140 (size: 0x8)
    FBP_Action_RaidBossModeChange_CAddStatusEventDispatcher AddStatusEventDispatcher; // 0x0148 (size: 0x10)
    void AddStatusEventDispatcher();

    void FindModeChangeVisualEffectType(EPalElementType Element, EPalVisualEffectID& VisualEffect, TSoftClassPtr<UPalVisualEffectBase>& Value);
    void SetActiveCharacter(bool Active);
    void EmitWarpEffect();
    void RotateToTargetActor(class AActor* Target);
    void Play Montage(EPalGeneralMontageType MontageType, double Rate);
    void StopMontage(EPalGeneralMontageType MontageType);
    void WarpToBaseCamp();
    void FindMontage(EPalGeneralMontageType MontageType, class UAnimMontage*& Montage);
    void OnBeginAction();
    void OnEndAction();
    void ExecuteUbergraph_BP_Action_RaidBossModeChange(int32 EntryPoint);
    void AddStatusEventDispatcher__DelegateSignature();
}; // Size: 0x158

#endif
