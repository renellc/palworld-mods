#ifndef UE4SS_SDK_BP_AIAction_FunnelFollow_HPP
#define UE4SS_SDK_BP_AIAction_FunnelFollow_HPP

class UBP_AIAction_FunnelFollow_C : public UBP_AIAction_OtomoFollow_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0208 (size: 0x8)
    TArray<double> TargetLocationDistanceForwardList;                                 // 0x0210 (size: 0x10)
    TArray<double> TargetLocationDistanceRightList;                                   // 0x0220 (size: 0x10)

    void Update Location Distance();
    void GetFollowSpeedFromController(double& FollowSpeed);
    void GetFollowInterpolatedPosFromController(FVector& FollowInterpolatedPos);
    void TryGetTrainer(class APalCharacter*& Trainer);
    void ActionTick(class APawn* ControlledPawn, float DeltaSeconds);
    void ExecuteUbergraph_BP_AIAction_FunnelFollow(int32 EntryPoint);
}; // Size: 0x230

#endif
