#ifndef UE4SS_SDK_WBP_OptionSettings_ListContentLRBar_HPP
#define UE4SS_SDK_WBP_OptionSettings_ListContentLRBar_HPP

class UWBP_OptionSettings_ListContentLRBar_C : public UUserWidget
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0278 (size: 0x8)
    class UImage* Image_56;                                                           // 0x0280 (size: 0x8)

    void SetActive(bool IsActive);
    void ExecuteUbergraph_WBP_OptionSettings_ListContentLRBar(int32 EntryPoint);
}; // Size: 0x288

#endif
