#ifndef UE4SS_SDK_BP_Status_ShieldRecovery_HPP
#define UE4SS_SDK_BP_Status_ShieldRecovery_HPP

class UBP_Status_ShieldRecovery_C : public UPalStatusBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0048 (size: 0x8)
    bool IsRecoverAble;                                                               // 0x0050 (size: 0x1)
    FTimerHandle RecoverStartAbleHandle;                                              // 0x0058 (size: 0x8)
    bool InitEnd;                                                                     // 0x0060 (size: 0x1)
    double DamageWeight;                                                              // 0x0068 (size: 0x8)
    double tempDeltaTime;                                                             // 0x0070 (size: 0x8)
    double Const_MutekiTime;                                                          // 0x0078 (size: 0x8)
    FName flagName;                                                                   // 0x0080 (size: 0x8)

    void CreateDynamicMaterial();
    void ChangeSheildDamageMaterial();
    void GetParam(class UPalIndividualCharacterParameter*& ip);
    void OnBeginStatus();
    void TickStatus(float DeltaTime);
    void OnEndStatus();
    void カスタムイベント_OnDamage(FPalDamageResult DamageResult);
    void カスタムイベント_OnSlipDamage(int32 Damage);
    void カスタムイベント_0();
    void カスタムイベント_1(class APalCharacter* InCharacter);
    void カスタムイベント_DamageShield(int32 Damage, bool IsShieldBroken);
    void ExecuteUbergraph_BP_Status_ShieldRecovery(int32 EntryPoint);
}; // Size: 0x88

#endif
