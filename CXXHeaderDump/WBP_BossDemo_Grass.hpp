#ifndef UE4SS_SDK_WBP_BossDemo_Grass_HPP
#define UE4SS_SDK_WBP_BossDemo_Grass_HPP

class UWBP_BossDemo_Grass_C : public UWBP_BossDemoBase_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0408 (size: 0x8)
    class UWidgetAnimation* Anim_Open;                                                // 0x0410 (size: 0x8)
    class UImage* Flash;                                                              // 0x0418 (size: 0x8)
    class UImage* Image_Black;                                                        // 0x0420 (size: 0x8)
    class UImage* Image_Boss;                                                         // 0x0428 (size: 0x8)
    class URetainerBox* RetainerBox_0;                                                // 0x0430 (size: 0x8)
    class UWBP_BossBattle_BossCut_C* WBP_BossBattle_BossCut;                          // 0x0438 (size: 0x8)
    class UWBP_BossBattle_BossCutBase_C* WBP_BossBattle_BossCutBase;                  // 0x0440 (size: 0x8)

    void OnStartEvent();
    void SetupText();
    void Finished_0B4EAE634F91DD2EE5D83DB32ACA6A9D();
    void AnmEvent_Start();
    void ExecuteUbergraph_WBP_BossDemo_Grass(int32 EntryPoint);
}; // Size: 0x448

#endif
