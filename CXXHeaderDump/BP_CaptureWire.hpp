#ifndef UE4SS_SDK_BP_CaptureWire_HPP
#define UE4SS_SDK_BP_CaptureWire_HPP

class ABP_CaptureWire_C : public AActor
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0290 (size: 0x8)
    class UStaticMeshComponent* StaticMesh_Wire3;                                     // 0x0298 (size: 0x8)
    class UStaticMeshComponent* StaticMesh_Wire2;                                     // 0x02A0 (size: 0x8)
    class UStaticMeshComponent* StaticMesh_Wire1;                                     // 0x02A8 (size: 0x8)
    class UStaticMeshComponent* StaticMesh_Wire0;                                     // 0x02B0 (size: 0x8)
    class USceneComponent* DefaultSceneRoot;                                          // 0x02B8 (size: 0x8)
    class APalCharacter* TargetMonster;                                               // 0x02C0 (size: 0x8)
    double MovableRange;                                                              // 0x02C8 (size: 0x8)
    TArray<FVector> AnchorGoalPoint;                                                  // 0x02D0 (size: 0x10)
    TArray<TEnumAsByte<EObjectTypeQuery>> LayHitObjectTypes;                          // 0x02E0 (size: 0x10)
    TArray<class UStaticMeshComponent*> WireMesh;                                     // 0x02F0 (size: 0x10)
    bool isFixMode;                                                                   // 0x0300 (size: 0x1)
    bool isAnchorReach;                                                               // 0x0301 (size: 0x1)
    FVector AnchorCenterPos;                                                          // 0x0308 (size: 0x18)
    bool IsSpringable;                                                                // 0x0320 (size: 0x1)
    class UBP_AIAction_SimpleLeave_C* SimpleLeaveAIAction;                            // 0x0328 (size: 0x8)

    void RagDollStart();
    void Setup(class APalCharacter* TargetPal);
    void SetAnchorGoal();
    void UpdateWireMesh();
    void FixMonsterInSphere();
    void CaptureEffect(FPalDeadInfo DeadInfo);
    void ReceiveTick(float DeltaSeconds);
    void ExecuteUbergraph_BP_CaptureWire(int32 EntryPoint);
}; // Size: 0x330

#endif
