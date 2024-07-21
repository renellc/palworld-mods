#ifndef UE4SS_SDK_WBP_PalItemIconBase_HPP
#define UE4SS_SDK_WBP_PalItemIconBase_HPP

class UWBP_PalItemIconBase_C : public UPalUserWidget
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0408 (size: 0x8)
    FWBP_PalItemIconBase_COnLoadedTexture OnLoadedTexture;                            // 0x0410 (size: 0x10)
    void OnLoadedTexture(class UTexture2D* loadedTexture);
    FWBP_PalItemIconBase_COnStartLoadTexture OnStartLoadTexture;                      // 0x0420 (size: 0x10)
    void OnStartLoadTexture();
    FWBP_PalItemIconBase_COnSetEmpty OnSetEmpty;                                      // 0x0430 (size: 0x10)
    void OnSetEmpty();

    void SetEmpty();
    void Setup(FName StaticItemId);
    void OnLoaded_4877576D403287D740E132872987B748(class UObject* Loaded);
    void LoadIconEvent_Internal(TSoftObjectPtr<UTexture2D> SoftTexture);
    void ExecuteUbergraph_WBP_PalItemIconBase(int32 EntryPoint);
    void OnSetEmpty__DelegateSignature();
    void OnStartLoadTexture__DelegateSignature();
    void OnLoadedTexture__DelegateSignature(class UTexture2D* loadedTexture);
}; // Size: 0x440

#endif
