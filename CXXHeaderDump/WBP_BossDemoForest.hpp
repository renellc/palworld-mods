#ifndef UE4SS_SDK_WBP_BossDemoForest_HPP
#define UE4SS_SDK_WBP_BossDemoForest_HPP

class UWBP_BossDemoForest_C : public UWBP_BossDemoBase_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0408 (size: 0x8)
    class UWidgetAnimation* Anm_Open;                                                 // 0x0410 (size: 0x8)
    class UImage* Flash;                                                              // 0x0418 (size: 0x8)
    class UImage* Image_81;                                                           // 0x0420 (size: 0x8)
    class UWBP_BossBattle_BossCut01_C* WBP_BossBattle_BossCut01;                      // 0x0428 (size: 0x8)
    class UWBP_BossBattle_BossCutBase01_C* WBP_BossBattle_BossCutBase01;              // 0x0430 (size: 0x8)

    void OnStartEvent();
    void SetupText();
    void Finished_5237A44149AAD13ADBE5C9A87856B8C4();
    void AnmEvent_Open();
    void ExecuteUbergraph_WBP_BossDemoForest(int32 EntryPoint);
}; // Size: 0x438

#endif
