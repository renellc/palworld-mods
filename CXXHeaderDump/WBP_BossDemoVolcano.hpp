#ifndef UE4SS_SDK_WBP_BossDemoVolcano_HPP
#define UE4SS_SDK_WBP_BossDemoVolcano_HPP

class UWBP_BossDemoVolcano_C : public UWBP_BossDemoBase_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0408 (size: 0x8)
    class UWidgetAnimation* Anm_Open;                                                 // 0x0410 (size: 0x8)
    class UImage* Flash;                                                              // 0x0418 (size: 0x8)
    class UImage* Image_95;                                                           // 0x0420 (size: 0x8)
    class UWBP_BossBattle_BossCut03_C* WBP_BossBattle_BossCut03;                      // 0x0428 (size: 0x8)
    class UWBP_BossBattle_BossCutBase03_C* WBP_BossBattle_BossCutBase03;              // 0x0430 (size: 0x8)

    void OnStartEvent();
    void SetupText();
    void Finished_CBE810D944372A21A78534865EDA949A();
    void AnmEvent_Open();
    void ExecuteUbergraph_WBP_BossDemoVolcano(int32 EntryPoint);
}; // Size: 0x438

#endif
