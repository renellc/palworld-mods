#ifndef UE4SS_SDK_WBP_BossDemoSakurajima_HPP
#define UE4SS_SDK_WBP_BossDemoSakurajima_HPP

class UWBP_BossDemoSakurajima_C : public UWBP_BossDemoBase_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0408 (size: 0x8)
    class UWidgetAnimation* Anm_Open;                                                 // 0x0410 (size: 0x8)
    class UImage* Flash;                                                              // 0x0418 (size: 0x8)
    class UImage* Image_81;                                                           // 0x0420 (size: 0x8)
    class UWBP_BossBattle_BossCut05_C* WBP_BossBattle_BossCut05;                      // 0x0428 (size: 0x8)
    class UWBP_BossBattle_BossCutBase05_C* WBP_BossBattle_BossCutBase05;              // 0x0430 (size: 0x8)

    void OnStartEvent();
    void SetupText();
    void Finished_9D45F97F4E8B37970CC27D80C19FF88A();
    void AnmEvent_Open();
    void ExecuteUbergraph_WBP_BossDemoSakurajima(int32 EntryPoint);
}; // Size: 0x438

#endif
