#ifndef UE4SS_SDK_WBP_CommonReward_HPP
#define UE4SS_SDK_WBP_CommonReward_HPP

class UWBP_CommonReward_C : public UPalUserWidget
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0408 (size: 0x8)
    class UWidgetAnimation* Anm_PurpleColor;                                          // 0x0410 (size: 0x8)
    class UWidgetAnimation* Anm_DefaultColor;                                         // 0x0418 (size: 0x8)
    class UWidgetAnimation* Anm_Close;                                                // 0x0420 (size: 0x8)
    class UWidgetAnimation* Anm_Open;                                                 // 0x0428 (size: 0x8)
    class UImage* Icon;                                                               // 0x0430 (size: 0x8)
    class UBP_PalTextBlock_C* Text_RewardInfo;                                        // 0x0438 (size: 0x8)
    class UBP_PalTextBlock_C* Text_Title;                                             // 0x0440 (size: 0x8)
    TArray<FPalUICommonRewardDisplayData> RewardInfos;                                // 0x0448 (size: 0x10)
    bool Queuing;                                                                     // 0x0458 (size: 0x1)
    TMap<class EPalUIRewardDisplayType, class FDataTableRowHandle> TitleMap;          // 0x0460 (size: 0x50)

    void Finished_8B86E03B4C9B039B2D1E43872343E0D8();
    void Finished_99C931904947D8826978CE8B6DE53642();
    void OnSetup();
    void ShowInfo();
    void QueueRewardInfo(FPalUICommonRewardDisplayData Info);
    void SetInfo(FPalUICommonRewardDisplayData Info);
    void ChangeColor(bool IsPurple);
    void ExecuteUbergraph_WBP_CommonReward(int32 EntryPoint);
}; // Size: 0x4B0

#endif
