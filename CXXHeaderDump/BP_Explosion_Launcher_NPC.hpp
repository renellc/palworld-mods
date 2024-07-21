#ifndef UE4SS_SDK_BP_Explosion_Launcher_NPC_HPP
#define UE4SS_SDK_BP_Explosion_Launcher_NPC_HPP

class ABP_Explosion_Launcher_NPC_C : public ABP_ExplosionAttackBase_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x02D0 (size: 0x8)
    class UNiagaraComponent* Explosive;                                               // 0x02D8 (size: 0x8)

    void BndEvt__BP_Explosion_PenguinLauncher_Explosive_K2Node_ComponentBoundEvent_0_OnNiagaraSystemFinished__DelegateSignature(class UNiagaraComponent* PSystem);
    void ExecuteUbergraph_BP_Explosion_Launcher_NPC(int32 EntryPoint);
}; // Size: 0x2E0

#endif
