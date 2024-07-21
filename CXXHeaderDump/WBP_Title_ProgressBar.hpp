#ifndef UE4SS_SDK_WBP_Title_ProgressBar_HPP
#define UE4SS_SDK_WBP_Title_ProgressBar_HPP

class UWBP_Title_ProgressBar_C : public UUserWidget
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0278 (size: 0x8)
    class UProgressBar* ProgressBar;                                                  // 0x0280 (size: 0x8)
    double CurrentProgressValue;                                                      // 0x0288 (size: 0x8)
    double TargetProgressValue;                                                       // 0x0290 (size: 0x8)

    void SetProgressBar();
    void SetProgressValue(double NewValue);
    void Tick(FGeometry MyGeometry, float InDeltaTime);
    void ExecuteUbergraph_WBP_Title_ProgressBar(int32 EntryPoint);
}; // Size: 0x298

#endif
