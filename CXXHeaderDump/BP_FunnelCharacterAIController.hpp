#ifndef UE4SS_SDK_BP_FunnelCharacterAIController_HPP
#define UE4SS_SDK_BP_FunnelCharacterAIController_HPP

class ABP_FunnelCharacterAIController_C : public APalAIController
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0528 (size: 0x8)
    TSubclassOf<class UPalAIActionCompositeBase> DefaultRootCompositeActionClass;     // 0x0530 (size: 0x8)
    FVector FollowInterpolatedPos;                                                    // 0x0538 (size: 0x18)
    double FollowSpeed;                                                               // 0x0550 (size: 0x8)
    FName flagName;                                                                   // 0x0558 (size: 0x8)

    void SetEnableReticleTargetFlag(bool Enable);
    void OnInactive();
    void OnActive();
    void StopAction();
    void PlayDefaultAction();
    void ReceiveBeginPlay();
    void ExecuteUbergraph_BP_FunnelCharacterAIController(int32 EntryPoint);
}; // Size: 0x560

#endif
