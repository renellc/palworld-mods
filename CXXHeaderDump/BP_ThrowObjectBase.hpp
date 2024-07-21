#ifndef UE4SS_SDK_BP_ThrowObjectBase_HPP
#define UE4SS_SDK_BP_ThrowObjectBase_HPP

class ABP_ThrowObjectBase_C : public APalBullet
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0368 (size: 0x8)
    class UBP_PalSoundPlayerComponent_C* SoundPlayer;                                 // 0x0370 (size: 0x8)
    int32 BoundCount;                                                                 // 0x0378 (size: 0x4)
    double EnableGravityInterval;                                                     // 0x0380 (size: 0x8)
    double DefaultGravityScale;                                                       // 0x0388 (size: 0x8)
    class UNiagaraSystem* ThrowEffect;                                                // 0x0390 (size: 0x8)

    void Play Throw Sound();
    class USceneComponent* GetAkOwnerComponent();
    void PlaySoundWithMaterial(FPalDataTableRowName_SoundID ID, TEnumAsByte<EPhysicalSurface> PhysicalMaterial);
    void PlaySound(FPalDataTableRowName_SoundID ID);
    void IsCountDestroy(bool& IsDestroy);
    void IncrementBoundCountAndCheckDestroy();
    void GetMaxBoundCount(int32& Count);
    bool IsDestroy(class UPrimitiveComponent* HitComp, class AActor* OtherCharacter, class UPrimitiveComponent* OtherComp, const FHitResult& Hit);
    void OnEnableGravity();
    void OnBlock(class UPrimitiveComponent* HitComp, class AActor* OtherActor, class UPrimitiveComponent* OtherComp, FVector NormalImpulse, const FHitResult& Hit);
    void ReceiveActorBeginOverlap(class AActor* OtherActor);
    void ReceiveBeginPlay();
    void ExecuteUbergraph_BP_ThrowObjectBase(int32 EntryPoint);
}; // Size: 0x398

#endif
