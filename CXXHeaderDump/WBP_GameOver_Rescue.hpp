#ifndef UE4SS_SDK_WBP_GameOver_Rescue_HPP
#define UE4SS_SDK_WBP_GameOver_Rescue_HPP

class UWBP_GameOver_Rescue_C : public UPalUserWidget
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0408 (size: 0x8)
    class UProgressBar* ProgressBar_Rescue;                                           // 0x0410 (size: 0x8)

    void UpdateRescue(double Remain);
    void ExecuteUbergraph_WBP_GameOver_Rescue(int32 EntryPoint);
}; // Size: 0x418

#endif
