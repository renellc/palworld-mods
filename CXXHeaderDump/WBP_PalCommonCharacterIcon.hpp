#ifndef UE4SS_SDK_WBP_PalCommonCharacterIcon_HPP
#define UE4SS_SDK_WBP_PalCommonCharacterIcon_HPP

class UWBP_PalCommonCharacterIcon_C : public UWBP_PalCharacterIconBase_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0470 (size: 0x8)
    class UCircularThrobber* CircularThrobber_96;                                     // 0x0478 (size: 0x8)
    class UImage* iconImage;                                                          // 0x0480 (size: 0x8)
    class UMaterialInstanceDynamic* dynamicMaterial;                                  // 0x0488 (size: 0x8)
    bool IsEmpty;                                                                     // 0x0490 (size: 0x1)
    double SphereMaskRadius;                                                          // 0x0498 (size: 0x8)

    void SetFraction(double Fraction);
    void OnEmpty();
    void OnLoaded(class UTexture2D* loadedTexture);
    void OnStartLoad();
    void Construct();
    void OnInitialized();
    void ExecuteUbergraph_WBP_PalCommonCharacterIcon(int32 EntryPoint);
}; // Size: 0x4A0

#endif
