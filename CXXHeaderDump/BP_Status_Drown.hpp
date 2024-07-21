#ifndef UE4SS_SDK_BP_Status_Drown_HPP
#define UE4SS_SDK_BP_Status_Drown_HPP

class UBP_Status_Drown_C : public UPalStatusBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0048 (size: 0x8)
    bool IsDrowning;                                                                  // 0x0050 (size: 0x1)
    FTimerHandle Timer;                                                               // 0x0058 (size: 0x8)

    void GetSlipDamage(int32& Damage);
    void GetOwnerHP(int64& OwnerHP);
    void IsDrownInWater(bool& IsDrawningInWater);
    void IsDrown(bool& IsDrawning);
    void カスタムイベント_SlipDamage();
    void OnBeginStatus();
    void OnEndStatus();
    void ExecuteUbergraph_BP_Status_Drown(int32 EntryPoint);
}; // Size: 0x60

#endif
