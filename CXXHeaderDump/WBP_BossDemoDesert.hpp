#ifndef UE4SS_SDK_WBP_BossDemoDesert_HPP
#define UE4SS_SDK_WBP_BossDemoDesert_HPP

class UWBP_BossDemoDesert_C : public UWBP_BossDemoBase_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0408 (size: 0x8)
    class UImage* Image_395;                                                          // 0x0410 (size: 0x8)
    class UWBP_BossBattle_BossCut02_C* WBP_BossBattle_BossCut02;                      // 0x0418 (size: 0x8)
    class UWBP_BossBattle_BossCutBase02_C* WBP_BossBattle_BossCutBase02;              // 0x0420 (size: 0x8)

    void OnStartEvent();
    void SetupText();
    void Finished_521992B04801673A8A4B5C9041710F99();
    void AnmEvent_Open();
    void ExecuteUbergraph_WBP_BossDemoDesert(int32 EntryPoint);
}; // Size: 0x428

#endif
