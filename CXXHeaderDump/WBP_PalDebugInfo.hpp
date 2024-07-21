#ifndef UE4SS_SDK_WBP_PalDebugInfo_HPP
#define UE4SS_SDK_WBP_PalDebugInfo_HPP

class UWBP_PalDebugInfo_C : public UPalUserWidget
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0408 (size: 0x8)
    class UTextBlock* RevisionText;                                                   // 0x0410 (size: 0x8)
    TMap<class FString, class FString> BuildConfigDisplayTextMap;                     // 0x0418 (size: 0x50)

    void Construct();
    void OnSetup();
    void ExecuteUbergraph_WBP_PalDebugInfo(int32 EntryPoint);
}; // Size: 0x468

#endif
