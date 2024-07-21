#ifndef UE4SS_SDK_BP_FluidController_HPP
#define UE4SS_SDK_BP_FluidController_HPP

class ABP_FluidController_C : public AActor
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0290 (size: 0x8)
    class UBillboardComponent* Icon;                                                  // 0x0298 (size: 0x8)
    int32 CurrentRT;                                                                  // 0x02A0 (size: 0x4)
    double Time;                                                                      // 0x02A8 (size: 0x8)
    class UMaterialInstanceDynamic* FluidTransfer;                                    // 0x02B0 (size: 0x8)
    class UMaterialInstanceDynamic* FluidSimulation;                                  // 0x02B8 (size: 0x8)
    class UMaterialInstanceDynamic* NormalSimulation;                                 // 0x02C0 (size: 0x8)
    bool EnableSimulation;                                                            // 0x02C8 (size: 0x1)
    double FluidUpdateRate;                                                           // 0x02D0 (size: 0x8)
    double FluidTravelSpeed;                                                          // 0x02D8 (size: 0x8)
    double FluidDampening;                                                            // 0x02E0 (size: 0x8)
    class UTextureRenderTarget2D* Height_0;                                           // 0x02E8 (size: 0x8)
    class UTextureRenderTarget2D* Height_1;                                           // 0x02F0 (size: 0x8)
    class UTextureRenderTarget2D* Height_2;                                           // 0x02F8 (size: 0x8)
    int32 RenderTargetSize;                                                           // 0x0300 (size: 0x4)
    class UTextureRenderTarget2D* FluidOut;                                           // 0x0308 (size: 0x8)
    class UTextureRenderTarget2D* FluidOutNormal;                                     // 0x0310 (size: 0x8)
    double NormalIntensity;                                                           // 0x0318 (size: 0x8)

    void GetRT_Height(int32 Index, class UTextureRenderTarget2D*& RenderTarget);
    void CreateMaterials();
    void ClearRenderTargets();
    void GetRT(int32 Index, class UTextureRenderTarget2D* RenderTarget_0, class UTextureRenderTarget2D* RenderTarget_1, class UTextureRenderTarget2D* RenderTarget_2, class UTextureRenderTarget2D*& RenderTarget);
    void GetPreviousRT(int32 CurrentRTIndex, int32 FramesOld, class UTextureRenderTarget2D* RenderTarget_0, class UTextureRenderTarget2D* RenderTarget_1, class UTextureRenderTarget2D* RenderTarget_2, class UTextureRenderTarget2D*& RenderTargetOut);
    void UserConstructionScript();
    void ReceiveBeginPlay();
    void ReceiveTick(float DeltaSeconds);
    void ReceiveEndPlay(TEnumAsByte<EEndPlayReason::Type> EndPlayReason);
    void ExecuteUbergraph_BP_FluidController(int32 EntryPoint);
}; // Size: 0x320

#endif
