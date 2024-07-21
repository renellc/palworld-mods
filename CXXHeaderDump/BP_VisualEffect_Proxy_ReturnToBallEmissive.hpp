#ifndef UE4SS_SDK_BP_VisualEffect_Proxy_ReturnToBallEmissive_HPP
#define UE4SS_SDK_BP_VisualEffect_Proxy_ReturnToBallEmissive_HPP

class UBP_VisualEffect_Proxy_ReturnToBallEmissive_C : public UPalVisualEffectBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0070 (size: 0x8)

    void OnBeginVisualEffect();
    void ExecuteUbergraph_BP_VisualEffect_Proxy_ReturnToBallEmissive(int32 EntryPoint);
}; // Size: 0x78

#endif
