#ifndef UE4SS_SDK_WBP_CharaCre_SliderBase_HPP
#define UE4SS_SDK_WBP_CharaCre_SliderBase_HPP

class UWBP_CharaCre_SliderBase_C : public UUserWidget
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0278 (size: 0x8)
    class UImage* Base;                                                               // 0x0280 (size: 0x8)
    class UBP_PalTextBlock_C* Text_Slider;                                            // 0x0288 (size: 0x8)
    class UBP_PalTextBlock_C* Text_SliderNum;                                         // 0x0290 (size: 0x8)
    FDataTableRowHandle MsgId;                                                        // 0x0298 (size: 0x10)

    void SetValue(int32 NewValue);
    void OnInitialized();
    void ExecuteUbergraph_WBP_CharaCre_SliderBase(int32 EntryPoint);
}; // Size: 0x2A8

#endif
