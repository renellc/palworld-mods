#ifndef UE4SS_SDK_BP_FunnelCharacter_HPP
#define UE4SS_SDK_BP_FunnelCharacter_HPP

class ABP_FunnelCharacter_C : public APalFunnelCharacter
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0960 (size: 0x8)
    class UPalAbilitySkillParameterComponent* PalAbilitySkillParameter;               // 0x0968 (size: 0x8)
    class UPalNavigationInvokerComponent* PalNavigationInvoker;                       // 0x0970 (size: 0x8)
    class UPalFacialComponent* PalFacial;                                             // 0x0978 (size: 0x8)

    void SetLocationNearTrainer();
    void ReceiveBeginPlay();
    void ReceiveTick(float DeltaSeconds);
    void OnActive();
    void OnInactive();
    void ExecuteUbergraph_BP_FunnelCharacter(int32 EntryPoint);
}; // Size: 0x980

#endif
