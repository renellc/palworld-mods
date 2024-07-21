#ifndef UE4SS_SDK_WBP_PalInGameMenuItemIcon_HPP
#define UE4SS_SDK_WBP_PalInGameMenuItemIcon_HPP

class UWBP_PalInGameMenuItemIcon_C : public UWBP_PalItemIconBase_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0440 (size: 0x8)
    class UCircularThrobber* CircularThrobber_363;                                    // 0x0448 (size: 0x8)
    class UImage* Image_57;                                                           // 0x0450 (size: 0x8)
    bool EmptySet;                                                                    // 0x0458 (size: 0x1)

    void OnInitialized();
    void StartLoadEvent();
    void LoadedTextureEvent(class UTexture2D* loadedTexture);
    void EmptyEvent();
    void ExecuteUbergraph_WBP_PalInGameMenuItemIcon(int32 EntryPoint);
}; // Size: 0x459

#endif
