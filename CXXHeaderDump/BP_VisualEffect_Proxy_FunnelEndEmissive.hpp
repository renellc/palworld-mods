#ifndef UE4SS_SDK_BP_VisualEffect_Proxy_FunnelEndEmissive_HPP
#define UE4SS_SDK_BP_VisualEffect_Proxy_FunnelEndEmissive_HPP

class UBP_VisualEffect_Proxy_FunnelEndEmissive_C : public UPalVisualEffectBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0070 (size: 0x8)

    void OnBeginVisualEffect();
    void ExecuteUbergraph_BP_VisualEffect_Proxy_FunnelEndEmissive(int32 EntryPoint);
}; // Size: 0x78

#endif
