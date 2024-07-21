#ifndef UE4SS_SDK_WBP_PalHungerIcon_HPP
#define UE4SS_SDK_WBP_PalHungerIcon_HPP

class UWBP_PalHungerIcon_C : public UUserWidget
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0278 (size: 0x8)
    class UWidgetAnimation* Anm_Red;                                                  // 0x0280 (size: 0x8)
    class UWidgetAnimation* Anm_Orange;                                               // 0x0288 (size: 0x8)
    class UWidgetAnimation* Anm_Blue;                                                 // 0x0290 (size: 0x8)
    class UWidgetAnimation* Anm_Close;                                                // 0x0298 (size: 0x8)
    class UWidgetAnimation* Anm_Open;                                                 // 0x02A0 (size: 0x8)
    class UImage* BaseFlare;                                                          // 0x02A8 (size: 0x8)
    class UImage* Flare;                                                              // 0x02B0 (size: 0x8)
    class UImage* Image;                                                              // 0x02B8 (size: 0x8)
    class UImage* Image_595;                                                          // 0x02C0 (size: 0x8)
    class UImage* Line;                                                               // 0x02C8 (size: 0x8)
    class UImage* MI_Icon;                                                            // 0x02D0 (size: 0x8)
    class UImage* Shadow;                                                             // 0x02D8 (size: 0x8)
    class UBP_PalTextBlock_C* Text_Detail;                                            // 0x02E0 (size: 0x8)
    FWBP_PalHungerIcon_COnFinishedClose OnFinishedClose;                              // 0x02E8 (size: 0x10)
    void OnFinishedClose();
    FDataTableRowHandle MealMsgID;                                                    // 0x02F8 (size: 0x10)
    FDataTableRowHandle LowHungerMsgID;                                               // 0x0308 (size: 0x10)

    void SetExistFoodFlag(bool IsExistFood);
    void Finished_52B2C4554CC22DF82B22ECB5253B6180();
    void Finished_2C1349EA46882EC657B89FA9AA7A0802();
    void AnmEvent_Open();
    void AnmEvent_Close();
    void Construct();
    void ExecuteUbergraph_WBP_PalHungerIcon(int32 EntryPoint);
    void OnFinishedClose__DelegateSignature();
}; // Size: 0x318

#endif
