#ifndef UE4SS_SDK_BP_HitEffectSlot_HPP
#define UE4SS_SDK_BP_HitEffectSlot_HPP

class UBP_HitEffectSlot_C : public UPalHitEffectSlot
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0028 (size: 0x8)
    TArray<TSoftObjectPtr<UNiagaraSystem>> PreLoadList;                               // 0x0030 (size: 0x10)
    TArray<class UNiagaraSystem*> LoadCache;                                          // 0x0040 (size: 0x10)
    bool IsCrying;                                                                    // 0x0050 (size: 0x1)
    TArray<class TSubclassOf<APalMapObject>> RockBPList;                              // 0x0058 (size: 0x10)
    TArray<class TSubclassOf<APalMapObject>> TreeBPList;                              // 0x0068 (size: 0x10)
    bool NewVar_0;                                                                    // 0x0078 (size: 0x1)
    FString RockBPName;                                                               // 0x0080 (size: 0x10)

    void PlayHitSound(const FPalDamageInfo& PalDamageInfo);
    void IsEnableCameraShake(bool& IsEnable);
    void PlayCameraShakeAndSoundEffect(EPalWazaCategory Category, class AActor* Attacker, bool SpecializedEffectPlayed);
    void SpawnSpecializationEffect(class AActor* Attacker, FVector Location, double EffectScale, bool& Played);
    void SpawnSneakAttackEffect(FVector Location);
    void SpawnElementalHitEffectBullet(EPalElementType Element, FVector Location, double EffectScale);
    void SpawnElementalHitEffectNear(EPalElementType Element, FVector Location, double EffectScale);
    void SpawnElementalHitEffectFar(EPalElementType Element, FVector Location, double EffectScale, bool IsPoison);
    void OnLoaded_D5A0C82B4BA3C329BE0E728CCA761919(class UObject* Loaded);
    void LoadAndPlayEffect(TSoftObjectPtr<UNiagaraSystem> EffectPath, FTransform Transform);
    void Initialize();
    void PlayHitEffect(const FPalDamageInfo& Info);
    void CryCoolTime(EAkCallbackType CallbackType, class UAkCallbackInfo* CallbackInfo);
    void ExecuteUbergraph_BP_HitEffectSlot(int32 EntryPoint);
}; // Size: 0x90

#endif
