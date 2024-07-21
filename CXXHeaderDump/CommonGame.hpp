#ifndef UE4SS_SDK_CommonGame_HPP
#define UE4SS_SDK_CommonGame_HPP

#include "CommonGame_enums.hpp"

struct FConfirmationDialogAction
{
    ECommonMessagingResult Result;                                                    // 0x0000 (size: 0x1)
    FText OptionalDisplayText;                                                        // 0x0008 (size: 0x18)

}; // Size: 0x20

struct FMeasuredText
{
}; // Size: 0x30

struct FRootViewportLayoutInfo
{
    class ULocalPlayer* LocalPlayer;                                                  // 0x0000 (size: 0x8)
    class UPrimaryGameLayout* RootLayout;                                             // 0x0008 (size: 0x8)
    bool bAddedToViewport;                                                            // 0x0010 (size: 0x1)

}; // Size: 0x18

class ACommonPlayerController : public AModularPlayerController
{
}; // Size: 0x850

class UAsyncAction_CreateWidgetAsync : public UCancellableAsyncAction
{
    FAsyncAction_CreateWidgetAsyncOnComplete OnComplete;                              // 0x0030 (size: 0x10)
    void CreateWidgetAsyncDelegate(class UUserWidget* UserWidget);

    class UAsyncAction_CreateWidgetAsync* CreateWidgetAsync(class UObject* WorldContextObject, TSoftClassPtr<UUserWidget> UserWidgetSoftClass, class APlayerController* OwningPlayer, bool bSuspendInputUntilComplete);
}; // Size: 0xA8

class UAsyncAction_PushContentToLayerForPlayer : public UCancellableAsyncAction
{
    FAsyncAction_PushContentToLayerForPlayerBeforePush BeforePush;                    // 0x0030 (size: 0x10)
    void PushContentToLayerForPlayerAsyncDelegate(class UCommonActivatableWidget* UserWidget);
    FAsyncAction_PushContentToLayerForPlayerAfterPush AfterPush;                      // 0x0040 (size: 0x10)
    void PushContentToLayerForPlayerAsyncDelegate(class UCommonActivatableWidget* UserWidget);

    class UAsyncAction_PushContentToLayerForPlayer* PushContentToLayerForPlayer(class APlayerController* OwningPlayer, TSoftClassPtr<UCommonActivatableWidget> WidgetClass, FGameplayTag LayerName, bool bSuspendInputUntilComplete);
}; // Size: 0xA8

class UAsyncAction_ShowConfirmation : public UBlueprintAsyncActionBase
{
    FAsyncAction_ShowConfirmationOnResult OnResult;                                   // 0x0030 (size: 0x10)
    void CommonMessagingResultMCDelegate(ECommonMessagingResult Result);
    class UObject* WorldContextObject;                                                // 0x0040 (size: 0x8)
    class ULocalPlayer* TargetLocalPlayer;                                            // 0x0048 (size: 0x8)
    class UCommonGameDialogDescriptor* Descriptor;                                    // 0x0050 (size: 0x8)

    class UAsyncAction_ShowConfirmation* ShowConfirmationYesNo(class UObject* InWorldContextObject, FText Title, FText Message);
    class UAsyncAction_ShowConfirmation* ShowConfirmationOkCancel(class UObject* InWorldContextObject, FText Title, FText Message);
    class UAsyncAction_ShowConfirmation* ShowConfirmationCustom(class UObject* InWorldContextObject, class UCommonGameDialogDescriptor* Descriptor);
}; // Size: 0x58

class UCommonGameDialog : public UCommonActivatableWidget
{
}; // Size: 0x3C8

class UCommonGameDialogDescriptor : public UObject
{
    FText Header;                                                                     // 0x0028 (size: 0x18)
    FText Body;                                                                       // 0x0040 (size: 0x18)
    TArray<FConfirmationDialogAction> ButtonActions;                                  // 0x0058 (size: 0x10)

}; // Size: 0x68

class UCommonGameInstance : public UGameInstance
{
    class UCommonSession_SearchResult* RequestedSession;                              // 0x01C8 (size: 0x8)

    void HandleSystemMessage(FGameplayTag MessageType, FText Title, FText Message);
    void HandlePrivilegeChanged(const class UCommonUserInfo* UserInfo, ECommonUserPrivilege Privilege, ECommonUserAvailability OldAvailability, ECommonUserAvailability NewAvailability);
}; // Size: 0x1D0

class UCommonLocalPlayer : public ULocalPlayer
{
}; // Size: 0x2E8

class UCommonMessagingSubsystem : public ULocalPlayerSubsystem
{
}; // Size: 0x30

class UCommonPlayerInputKey : public UCommonUserWidget
{
    FName BoundAction;                                                                // 0x02A0 (size: 0x8)
    float AxisScale;                                                                  // 0x02A8 (size: 0x4)
    FKey BoundKeyFallback;                                                            // 0x02B0 (size: 0x18)
    ECommonInputType InputTypeOverride;                                               // 0x02C8 (size: 0x1)
    FName PresetNameOverride;                                                         // 0x02CC (size: 0x8)
    ECommonKeybindForcedHoldStatus ForcedHoldKeybindStatus;                           // 0x02D4 (size: 0x1)
    bool bIsHoldKeybind;                                                              // 0x02D5 (size: 0x1)
    bool bShowKeybindBorder;                                                          // 0x02D6 (size: 0x1)
    FVector2D FrameSize;                                                              // 0x02D8 (size: 0x10)
    bool bShowTimeCountDown;                                                          // 0x02E8 (size: 0x1)
    FKey BoundKey;                                                                    // 0x02F0 (size: 0x18)
    FSlateBrush HoldProgressBrush;                                                    // 0x0310 (size: 0xD0)
    FSlateBrush KeyBindTextBorder;                                                    // 0x03E0 (size: 0xD0)
    bool bShowUnboundStatus;                                                          // 0x04B0 (size: 0x1)
    FSlateFontInfo KeyBindTextFont;                                                   // 0x04B8 (size: 0x60)
    FSlateFontInfo CountdownTextFont;                                                 // 0x0518 (size: 0x60)
    FMeasuredText CountdownText;                                                      // 0x0578 (size: 0x30)
    FMeasuredText KeybindText;                                                        // 0x05A8 (size: 0x30)
    FMargin KeybindTextPadding;                                                       // 0x05D8 (size: 0x10)
    FVector2D KeybindFrameMinimumSize;                                                // 0x05E8 (size: 0x10)
    FName PercentageMaterialParameterName;                                            // 0x05F8 (size: 0x8)
    class UMaterialInstanceDynamic* ProgressPercentageMID;                            // 0x0600 (size: 0x8)
    FSlateBrush CachedKeyBrush;                                                       // 0x0620 (size: 0xD0)

    void UpdateKeybindWidget();
    void StopHoldProgress(FName HoldActionName, bool bCompletedSuccessfully);
    void StartHoldProgress(FName HoldActionName, float HoldDuration);
    void SetShowProgressCountDown(bool bShow);
    void SetPresetNameOverride(const FName NewValue);
    void SetForcedHoldKeybindStatus(ECommonKeybindForcedHoldStatus InForcedHoldKeybindStatus);
    void SetForcedHoldKeybind(bool InForcedHoldKeybind);
    void SetBoundKey(FKey NewBoundAction);
    void SetBoundAction(FName NewBoundAction);
    void SetAxisScale(const float NewValue);
    bool IsHoldKeybind();
    bool IsBoundKeyValid();
}; // Size: 0x6F0

class UCommonUIExtensions : public UBlueprintFunctionLibrary
{

    FName SuspendInputForPlayer(class APlayerController* PlayerController, FName SuspendReason);
    void ResumeInputForPlayer(class APlayerController* PlayerController, FName SuspendToken);
    void PushStreamedContentToLayer_ForPlayer(const class ULocalPlayer* LocalPlayer, FGameplayTag LayerName, TSoftClassPtr<UCommonActivatableWidget> WidgetClass);
    class UCommonActivatableWidget* PushContentToLayer_ForPlayer(const class ULocalPlayer* LocalPlayer, FGameplayTag LayerName, TSubclassOf<class UCommonActivatableWidget> WidgetClass);
    void PopContentFromLayer(class UCommonActivatableWidget* ActivatableWidget);
    bool IsOwningPlayerUsingTouch(const class UUserWidget* WidgetContextObject);
    bool IsOwningPlayerUsingGamepad(const class UUserWidget* WidgetContextObject);
    ECommonInputType GetOwningPlayerInputType(const class UUserWidget* WidgetContextObject);
    class ULocalPlayer* GetLocalPlayerFromController(class APlayerController* PlayerController);
}; // Size: 0x28

class UGameUIManagerSubsystem : public UGameInstanceSubsystem
{
    class UGameUIPolicy* CurrentPolicy;                                               // 0x0030 (size: 0x8)
    TSoftClassPtr<UGameUIPolicy> DefaultUIPolicyClass;                                // 0x0038 (size: 0x30)

}; // Size: 0x68

class UGameUIPolicy : public UObject
{
    TSoftClassPtr<UPrimaryGameLayout> LayoutClass;                                    // 0x0030 (size: 0x30)
    TArray<FRootViewportLayoutInfo> RootViewportLayouts;                              // 0x0060 (size: 0x10)

}; // Size: 0x70

class UPrimaryGameLayout : public UCommonUserWidget
{
    TMap<class FGameplayTag, class UCommonActivatableWidgetContainerBase*> Layers;    // 0x02B8 (size: 0x50)

    void RegisterLayer(FGameplayTag LayerTag, class UCommonActivatableWidgetContainerBase* LayerWidget);
}; // Size: 0x308

#endif
