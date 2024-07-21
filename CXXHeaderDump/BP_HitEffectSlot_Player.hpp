#ifndef UE4SS_SDK_BP_HitEffectSlot_Player_HPP
#define UE4SS_SDK_BP_HitEffectSlot_Player_HPP

class UBP_HitEffectSlot_Player_C : public UPalHitEffectSlot
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0028 (size: 0x8)
    TArray<class UNiagaraSystem*> LoadCache;                                          // 0x0030 (size: 0x10)

    void SpawnElementalHitEffectBullet(EPalElementType Element, FVector Location, double EffectScale);
    void SpawnElementalHitEffectNear(EPalElementType Element, FVector Location, double EffectScale);
    void SpawnSneakAttackEffect(FVector Location);
    void SpawnElementalHitEffectFar(EPalElementType Element, FVector Location, double EffectScale, bool IsPoison);
    void OnLoaded_9E6C8F9D4F39DAEE12ED13A974550770(class UObject* Loaded);
    void PlayHitEffect(const FPalDamageInfo& Info);
    void LoadAndPlayEffect(TSoftObjectPtr<UNiagaraSystem> EffectPath, FTransform Transform);
    void ExecuteUbergraph_BP_HitEffectSlot_Player(int32 EntryPoint);
}; // Size: 0x40

#endif
