#ifndef UE4SS_SDK_BP_GliderComponent_HPP
#define UE4SS_SDK_BP_GliderComponent_HPP

class UBP_GliderComponent_C : public UPalGliderComponent
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0120 (size: 0x8)
    class UPalCharacterMovementComponent* CharacterMovement;                          // 0x0128 (size: 0x8)
    class UNiagaraComponent* GlidingEffect;                                           // 0x0130 (size: 0x8)
    class APalGliderObject* CurrentGliderObject;                                      // 0x0138 (size: 0x8)
    FName GliderDisableFlag;                                                          // 0x0140 (size: 0x8)
    TSubclassOf<class APalGliderObject> CurrentGliderActorClass;                      // 0x0148 (size: 0x8)
    FTimerHandle TimerHandle;                                                         // 0x0150 (size: 0x8)

    void CheckReturnSpawnedOtomo();
    void SpawnGlidingEffect();
    void Setup();
    void OnInitializeGlider();
    void OnGlidingCancleAction();
    void ReceiveTick(float DeltaSeconds);
    void ReceiveBeginPlay();
    void OnStartGliding();
    void OnEndGliding();
    void OnChangeGliderVisibility(bool bIsVisibility);
    void カスタムイベント();
    void ExecuteUbergraph_BP_GliderComponent(int32 EntryPoint);
}; // Size: 0x158

#endif
