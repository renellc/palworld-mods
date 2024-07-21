#ifndef UE4SS_SDK_BP_Status_RarePal_HPP
#define UE4SS_SDK_BP_Status_RarePal_HPP

class UBP_Status_RarePal_C : public UPalStatusBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0048 (size: 0x8)

    void OnBeginStatus();
    void ExecuteUbergraph_BP_Status_RarePal(int32 EntryPoint);
}; // Size: 0x50

#endif
