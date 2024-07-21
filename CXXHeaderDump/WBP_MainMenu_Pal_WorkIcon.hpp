#ifndef UE4SS_SDK_WBP_MainMenu_Pal_WorkIcon_HPP
#define UE4SS_SDK_WBP_MainMenu_Pal_WorkIcon_HPP

class UWBP_MainMenu_Pal_WorkIcon_C : public UUserWidget
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0278 (size: 0x8)
    class UPalRetainerBox* PalRetainerBox_Eff;                                        // 0x0280 (size: 0x8)
    class UBP_PalTextBlock_C* Text_LevelNum;                                          // 0x0288 (size: 0x8)
    class UImage* UpArrow;                                                            // 0x0290 (size: 0x8)
    class UWBP_IconPalWork_C* WBP_IconPalWork;                                        // 0x0298 (size: 0x8)

    void SetRankup(bool Enable);
    void SetRank(int32 Rank);
    void SetSuitability(EPalWorkSuitability WorkSuitability);
    void IconOn();
    void IconOff();
    void ExecuteUbergraph_WBP_MainMenu_Pal_WorkIcon(int32 EntryPoint);
}; // Size: 0x2A0

#endif
