#ifndef UE4SS_SDK_WBP_BossDemoSnowyMountain_HPP
#define UE4SS_SDK_WBP_BossDemoSnowyMountain_HPP

class UWBP_BossDemoSnowyMountain_C : public UWBP_BossDemoBase_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0408 (size: 0x8)
    class UWidgetAnimation* Anm_Open;                                                 // 0x0410 (size: 0x8)
    class UImage* Flash;                                                              // 0x0418 (size: 0x8)
    class UImage* Image_107;                                                          // 0x0420 (size: 0x8)
    class UImage* Image_179;                                                          // 0x0428 (size: 0x8)
    class UWBP_BossBattle_BossCut04_C* WBP_BossBattle_BossCut04;                      // 0x0430 (size: 0x8)
    class UWBP_BossBattle_BossCutBase04_C* WBP_BossBattle_BossCutBase04;              // 0x0438 (size: 0x8)

    void OnStartEvent();
    void SetupText();
    void Finished_2D6C15E94F53558D3EC2C8B9EA43EA40();
    void AnmEvent_Open();
    void ExecuteUbergraph_WBP_BossDemoSnowyMountain(int32 EntryPoint);
}; // Size: 0x440

#endif
