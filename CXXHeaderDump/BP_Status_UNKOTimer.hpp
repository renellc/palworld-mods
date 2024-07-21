#ifndef UE4SS_SDK_BP_Status_UNKOTimer_HPP
#define UE4SS_SDK_BP_Status_UNKOTimer_HPP

class UBP_Status_UNKOTimer_C : public UPalStatusBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0048 (size: 0x8)
    FTimerHandle Timer;                                                               // 0x0050 (size: 0x8)
    int32 OneDay_Second;                                                              // 0x0058 (size: 0x4)

    void OnBeginStatus();
    void OnEndStatus();
    void カスタムイベント_0();
    void ExecuteUbergraph_BP_Status_UNKOTimer(int32 EntryPoint);
}; // Size: 0x5C

#endif
