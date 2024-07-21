#ifndef UE4SS_SDK_WBP_PalActionBar_HPP
#define UE4SS_SDK_WBP_PalActionBar_HPP

class UWBP_PalActionBar_C : public UPalUserWidget
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0408 (size: 0x8)
    class UWidgetAnimation* Close;                                                    // 0x0410 (size: 0x8)
    class UWidgetAnimation* Open;                                                     // 0x0418 (size: 0x8)
    class UCommonBoundActionBar* CommonBoundActionBar_33;                             // 0x0420 (size: 0x8)
    class UInvalidationBox* InvalidationBox_0;                                        // 0x0428 (size: 0x8)
    int32 lastEntryNum;                                                               // 0x0430 (size: 0x4)

    void OnAddedAction();
    void OnRemovedAllAction();
    void AnmEvent_Open();
    void AnmEvent_Close();
    void Tick(FGeometry MyGeometry, float InDeltaTime);
    void OnInitialized();
    void ExecuteUbergraph_WBP_PalActionBar(int32 EntryPoint);
}; // Size: 0x434

#endif
