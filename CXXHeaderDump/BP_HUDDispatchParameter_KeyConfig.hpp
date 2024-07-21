#ifndef UE4SS_SDK_BP_HUDDispatchParameter_KeyConfig_HPP
#define UE4SS_SDK_BP_HUDDispatchParameter_KeyConfig_HPP

class UBP_HUDDispatchParameter_KeyConfig_C : public UPalHUDDispatchParameterBase
{
    FName ActionName;                                                                 // 0x0038 (size: 0x8)
    ECommonInputType InputType;                                                       // 0x0040 (size: 0x1)
    FBP_HUDDispatchParameter_KeyConfig_COnKeyChanged OnKeyChanged;                    // 0x0048 (size: 0x10)
    void OnKeyChanged(FName ActionName, FKey NewKey, EPalKeyConfigCategory InputType, EPalKeyConfigAxisFilterType AxisType);
    FPalKeyConfigSettings KeyConfigSetting;                                           // 0x0058 (size: 0x160)
    EPalKeyConfigAxisFilterType AxisType;                                             // 0x01B8 (size: 0x1)
    bool IsUI;                                                                        // 0x01B9 (size: 0x1)

    void OnKeyChanged__DelegateSignature(FName ActionName, FKey NewKey, EPalKeyConfigCategory InputType, EPalKeyConfigAxisFilterType AxisType);
}; // Size: 0x1BA

#endif
