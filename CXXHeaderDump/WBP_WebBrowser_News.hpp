#ifndef UE4SS_SDK_WBP_WebBrowser_News_HPP
#define UE4SS_SDK_WBP_WebBrowser_News_HPP

class UWBP_WebBrowser_News_C : public UPalUserWidgetOverlayUI
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0430 (size: 0x8)
    class UWBP_CommonButton_C* WBP_CommonButton;                                      // 0x0438 (size: 0x8)
    class UWBP_Menu_btn_C* WBP_Menu_btn;                                              // 0x0440 (size: 0x8)
    class UWebBrowser* WebBrowser;                                                    // 0x0448 (size: 0x8)

    class UWidget* BP_GetDesiredFocusTarget();
    void BndEvt__WBP_WebBrowserTest_WBP_Menu_btn_K2Node_ComponentBoundEvent_0_OnButtonClicked__DelegateSignature();
    void BndEvt__WBP_WebBrowser_News_WBP_CommonButton_K2Node_ComponentBoundEvent_1_OnClicked__DelegateSignature();
    void ExecuteUbergraph_WBP_WebBrowser_News(int32 EntryPoint);
}; // Size: 0x450

#endif
