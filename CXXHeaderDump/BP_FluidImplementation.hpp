#ifndef UE4SS_SDK_BP_FluidImplementation_HPP
#define UE4SS_SDK_BP_FluidImplementation_HPP

class UBP_FluidImplementation_C : public UActorComponent
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x00A0 (size: 0x8)
    class ABP_FluidController_C* FluidControllerReference;                            // 0x00A8 (size: 0x8)
    FName FluidControllerTag;                                                         // 0x00B0 (size: 0x8)
    FName FluidSurfaceTag;                                                            // 0x00B8 (size: 0x8)
    double TraceOffsetUp;                                                             // 0x00C0 (size: 0x8)
    double TraceOffsetDown;                                                           // 0x00C8 (size: 0x8)
    bool UsePerBoneTrace;                                                             // 0x00D0 (size: 0x1)
    bool ShowTraceDebug;                                                              // 0x00D1 (size: 0x1)
    double FluidDrawSize;                                                             // 0x00D8 (size: 0x8)
    double FluidMaxDrawIntensity;                                                     // 0x00E0 (size: 0x8)
    bool UseFrustumCulling;                                                           // 0x00E8 (size: 0x1)
    double FluidCullDistance;                                                         // 0x00F0 (size: 0x8)
    bool VelocityDeterminesIntensity;                                                 // 0x00F8 (size: 0x1)
    double VelocityDivideIntensity;                                                   // 0x0100 (size: 0x8)
    FName FluidMeshTag;                                                               // 0x0108 (size: 0x8)
    TArray<FName> Bones to Ignore;                                                    // 0x0110 (size: 0x10)
    TArray<class UMeshComponent*> MeshComponents;                                     // 0x0120 (size: 0x10)
    double VelocityBegin;                                                             // 0x0130 (size: 0x8)
    class UMaterialInstanceDynamic* DrawMaterialInstanceDynamic;                      // 0x0138 (size: 0x8)

    void PerBoneDraw(FName Bone Name, class UMeshComponent*& Mesh Component);
    void FindFluidController();
    void FluidTrace(FVector Location, bool& Valid);
    void ReceiveBeginPlay();
    void ReceiveTick(float DeltaSeconds);
    void ExecuteUbergraph_BP_FluidImplementation(int32 EntryPoint);
}; // Size: 0x140

#endif
