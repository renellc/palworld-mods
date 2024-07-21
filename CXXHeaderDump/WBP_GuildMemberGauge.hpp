#ifndef UE4SS_SDK_WBP_GuildMemberGauge_HPP
#define UE4SS_SDK_WBP_GuildMemberGauge_HPP

class UWBP_GuildMemberGauge_C : public UUserWidget
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0278 (size: 0x8)
    class UWidgetAnimation* Anm_Loop;                                                 // 0x0280 (size: 0x8)
    class UBP_PalTextBlock_C* BP_PalTextBlock_Name;                                   // 0x0288 (size: 0x8)
    class UImage* Gauge;                                                              // 0x0290 (size: 0x8)
    class UImage* Loupe_Angle;                                                        // 0x0298 (size: 0x8)

    void EnableAdditionalWidget(bool IsEnable);
    void UpdateDying(double Remain, double Max);
    void SetName(FString Name);
    void EnableName(bool IsEnable);
    void Construct();
    void ExecuteUbergraph_WBP_GuildMemberGauge(int32 EntryPoint);
}; // Size: 0x2A0

#endif
