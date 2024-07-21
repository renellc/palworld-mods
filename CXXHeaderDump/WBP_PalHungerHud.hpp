#ifndef UE4SS_SDK_WBP_PalHungerHud_HPP
#define UE4SS_SDK_WBP_PalHungerHud_HPP

class UWBP_PalHungerHud_C : public UPalUserWidgetWorldHUD
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0408 (size: 0x8)
    class UWBP_PalHungerIcon_C* WBP_PalHungerIcon;                                    // 0x0410 (size: 0x8)
    FGuid Belong Group Id;                                                            // 0x0418 (size: 0x10)
    FTimerHandle CheckGroupTimer;                                                     // 0x0428 (size: 0x8)

    void GetLocalPlayerGroupID(FGuid& GroupId);
    void RemoveSelf_In();
    void OnRequestRemove();
    void OnInitialized();
    void OnSetup();
    void CheckGroup();
    void Destruct();
    void ExecuteUbergraph_WBP_PalHungerHud(int32 EntryPoint);
}; // Size: 0x430

#endif
