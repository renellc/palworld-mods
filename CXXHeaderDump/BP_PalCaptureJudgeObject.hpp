#ifndef UE4SS_SDK_BP_PalCaptureJudgeObject_HPP
#define UE4SS_SDK_BP_PalCaptureJudgeObject_HPP

class ABP_PalCaptureJudgeObject_C : public APalCaptureJudgeObject
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x02B8 (size: 0x8)
    class UStaticMeshComponent* StaticMesh;                                           // 0x02C0 (size: 0x8)
    class USceneComponent* DefaultSceneRoot;                                          // 0x02C8 (size: 0x8)
    bool IsReturnOwner;                                                               // 0x02D0 (size: 0x1)
    double ReturnSpeed;                                                               // 0x02D8 (size: 0x8)

    void ReturnOwnerMovement(double DeltaTime);
    void ReceiveBeginPlay();
    void ReceiveTick(float DeltaSeconds);
    void OnFailedByMP(const class APalCharacter* Character, FCaptureResult Result);
    void OnFailedFinish();
    void OnCaptureSuccess(const class APalCharacter* Character, FCaptureResult Result);
    void OnFailedByTest(const class APalCharacter* Character, FCaptureResult Result);
    void OnSuccessFinish();
    void ExecuteUbergraph_BP_PalCaptureJudgeObject(int32 EntryPoint);
}; // Size: 0x2E0

#endif
