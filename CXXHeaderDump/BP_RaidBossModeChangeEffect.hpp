#ifndef UE4SS_SDK_BP_RaidBossModeChangeEffect_HPP
#define UE4SS_SDK_BP_RaidBossModeChangeEffect_HPP

class ABP_RaidBossModeChangeEffect_C : public AActor
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0290 (size: 0x8)
    class UNiagaraComponent* Niagara;                                                 // 0x0298 (size: 0x8)
    class USceneComponent* DefaultSceneRoot;                                          // 0x02A0 (size: 0x8)
    class APalCharacter* TargetCharacter;                                             // 0x02A8 (size: 0x8)

    void Set Target Pal(class APalCharacter* Pal);
    void ReceiveTick(float DeltaSeconds);
    void ReceiveBeginPlay();
    void ExecuteUbergraph_BP_RaidBossModeChangeEffect(int32 EntryPoint);
}; // Size: 0x2B0

#endif
