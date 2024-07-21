#ifndef UE4SS_SDK_BP_PredictedTarget_HPP
#define UE4SS_SDK_BP_PredictedTarget_HPP

class ABP_PredictedTarget_C : public AActor
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0290 (size: 0x8)
    class USphereComponent* DebugSphere;                                              // 0x0298 (size: 0x8)
    class USceneComponent* DefaultSceneRoot;                                          // 0x02A0 (size: 0x8)
    float LifeTime;                                                                   // 0x02A8 (size: 0x4)

    void ReceiveBeginPlay();
    void ExecuteUbergraph_BP_PredictedTarget(int32 EntryPoint);
}; // Size: 0x2AC

#endif
