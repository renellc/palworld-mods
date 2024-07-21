#ifndef UE4SS_SDK_WBP_IconPalWork_HPP
#define UE4SS_SDK_WBP_IconPalWork_HPP

class UWBP_IconPalWork_C : public UUserWidget
{
    class UImage* Icon;                                                               // 0x0278 (size: 0x8)
    TMap<class EPalWorkSuitability, class UTexture2D*> IconMap;                       // 0x0280 (size: 0x50)
    TMap<class EPalMapObjectMaterialSubType, class TSoftObjectPtr<UTexture2D>> IconMap_MaterialSubType; // 0x02D0 (size: 0x50)

    void SetSuitability(EPalWorkSuitability Suitability);
}; // Size: 0x320

#endif
