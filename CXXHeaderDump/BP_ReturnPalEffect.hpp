#ifndef UE4SS_SDK_BP_ReturnPalEffect_HPP
#define UE4SS_SDK_BP_ReturnPalEffect_HPP

class ABP_ReturnPalEffect_C : public AActor
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0290 (size: 0x8)
    class USceneComponent* DefaultSceneRoot;                                          // 0x0298 (size: 0x8)
    class UNiagaraComponent* Effect;                                                  // 0x02A0 (size: 0x8)
    FVector StartLocation;                                                            // 0x02A8 (size: 0x18)
    class APalCharacter* ForPlayer;                                                   // 0x02C0 (size: 0x8)
    double MaxLengthPerSec;                                                           // 0x02C8 (size: 0x8)
    bool DestoryNextFrame;                                                            // 0x02D0 (size: 0x1)
    class UNiagaraSystem* CacheDisappearBurstEffect;                                  // 0x02D8 (size: 0x8)
    class UNiagaraSystem* CacheDisappearEffect;                                       // 0x02E0 (size: 0x8)
    bool IsStartReturn;                                                               // 0x02E8 (size: 0x1)
    FVector LerpStartPos;                                                             // 0x02F0 (size: 0x18)
    double LerpTimer;                                                                 // 0x0308 (size: 0x8)
    double Progress;                                                                  // 0x0310 (size: 0x8)
    class UCurveFloat* CurveForLerp;                                                  // 0x0318 (size: 0x8)
    class UCurveFloat* CurveForUpOffset;                                              // 0x0320 (size: 0x8)
    bool IsMeatCutPal;                                                                // 0x0328 (size: 0x1)

    void StopTrail();
    void TickEffectPosition(double DeltaTime);
    void DestroySelf();
    void StartReturnInternal();
    void StartReturn(class APalCharacter* ReturnPal, class APalCharacter* ForPlayer);
    void OnLoaded_A9820E7D460282848A62DB870A68FEC9(class UObject* Loaded);
    void OnLoaded_FEF66AE74F6F27BBF50A98AACBCB911B(class UObject* Loaded);
    void OnLoaded_C8768D9B48C9921C96A17987152DB6B7(class UObject* Loaded);
    void ReceiveBeginPlay();
    void ReceiveTick(float DeltaSeconds);
    void LoadAndSpawnEffect(TSoftObjectPtr<UNiagaraSystem> EffectPath, FTransform SpawnTransform);
    void StartReturn_ForNetwork(class APalCharacter* OtomoPal, class APalCharacter* Player);
    void ExecuteUbergraph_BP_ReturnPalEffect(int32 EntryPoint);
}; // Size: 0x329

#endif
