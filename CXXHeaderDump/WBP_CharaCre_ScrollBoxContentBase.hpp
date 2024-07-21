#ifndef UE4SS_SDK_WBP_CharaCre_ScrollBoxContentBase_HPP
#define UE4SS_SDK_WBP_CharaCre_ScrollBoxContentBase_HPP

class UWBP_CharaCre_ScrollBoxContentBase_C : public UPalUserWidget
{
    FWBP_CharaCre_ScrollBoxContentBase_COnNotifyOpenSelectColorWindow OnNotifyOpenSelectColorWindow; // 0x0408 (size: 0x10)
    void OnNotifyOpenSelectColorWindow();
    FWBP_CharaCre_ScrollBoxContentBase_COnNotifyCloseSelectColorWIndow OnNotifyCloseSelectColorWIndow; // 0x0418 (size: 0x10)
    void OnNotifyCloseSelectColorWIndow();

    void GetRestoreFocusTarget(class UWidget*& Widget);
    void OnClosedSelectColorWindow_Internal(class UPalHUDDispatchParameterBase* Param);
    void OpenColorSelectWindow(class UBP_CharaCre_ColorSelectWindowDispatchParameter_C* Parameter);
    void GetTopFocusTarget(class UWidget*& Widget);
    void ApplyMakeInfo(FPalPlayerDataCharacterMakeInfo MakeInfo);
    void OnNotifyCloseSelectColorWIndow__DelegateSignature();
    void OnNotifyOpenSelectColorWindow__DelegateSignature();
}; // Size: 0x428

#endif
