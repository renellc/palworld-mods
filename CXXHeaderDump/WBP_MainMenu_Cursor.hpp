#ifndef UE4SS_SDK_WBP_MainMenu_Cursor_HPP
#define UE4SS_SDK_WBP_MainMenu_Cursor_HPP

class UWBP_MainMenu_Cursor_C : public UPalUserWidget
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0408 (size: 0x8)
    class UWidgetAnimation* Anm_CursorLoop;                                           // 0x0410 (size: 0x8)
    class UImage* Cursor_LB;                                                          // 0x0418 (size: 0x8)
    class UImage* Cursor_LB_1;                                                        // 0x0420 (size: 0x8)
    class UImage* Cursor_LT;                                                          // 0x0428 (size: 0x8)
    class UImage* Cursor_LT_1;                                                        // 0x0430 (size: 0x8)
    class UImage* Cursor_RB;                                                          // 0x0438 (size: 0x8)
    class UImage* Cursor_RB_1;                                                        // 0x0440 (size: 0x8)
    class UImage* Cursor_RT;                                                          // 0x0448 (size: 0x8)
    class UImage* Cursor_RT_1;                                                        // 0x0450 (size: 0x8)

    void Construct();
    void ExecuteUbergraph_WBP_MainMenu_Cursor(int32 EntryPoint);
}; // Size: 0x458

#endif
