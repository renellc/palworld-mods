#ifndef UE4SS_SDK_WebBrowserWidget_HPP
#define UE4SS_SDK_WebBrowserWidget_HPP

class UWebBrowser : public UWidget
{
    FWebBrowserOnUrlChanged OnUrlChanged;                                             // 0x0150 (size: 0x10)
    void OnUrlChanged(const FText& Text);
    FWebBrowserOnBeforePopup OnBeforePopup;                                           // 0x0160 (size: 0x10)
    void OnBeforePopup(FString URL, FString Frame);
    FWebBrowserOnConsoleMessage OnConsoleMessage;                                     // 0x0170 (size: 0x10)
    void OnConsoleMessage(FString Message, FString Source, int32 Line);
    FString InitialURL;                                                               // 0x0180 (size: 0x10)
    bool bSupportsTransparency;                                                       // 0x0190 (size: 0x1)

    void OnUrlChanged__DelegateSignature(const FText& Text);
    void OnConsoleMessage__DelegateSignature(FString Message, FString Source, int32 Line);
    void OnBeforePopup__DelegateSignature(FString URL, FString Frame);
    void LoadURL(FString NewURL);
    void LoadString(FString Contents, FString DummyURL);
    FString GetUrl();
    FText GetTitleText();
    void ExecuteJavascript(FString ScriptText);
}; // Size: 0x1A8

class UWebBrowserAssetManager : public UObject
{
    TSoftObjectPtr<UMaterial> DefaultMaterial;                                        // 0x0028 (size: 0x30)

}; // Size: 0x88

#endif
