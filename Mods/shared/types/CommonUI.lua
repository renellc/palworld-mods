---@meta

---@class FCommonAnalogCursorSettings
---@field PreprocessorPriority int32
---@field bEnableCursorAcceleration boolean
---@field CursorAcceleration float
---@field CursorMaxSpeed float
---@field CursorDeadZone float
---@field HoverSlowdownFactor float
---@field ScrollDeadZone float
---@field ScrollUpdatePeriod float
---@field ScrollMultiplier float
FCommonAnalogCursorSettings = {}

---@return FCommonAnalogCursorSettings
function FCommonAnalogCursorSettings:get() end



---@class FCommonButtonStyleOptionalSlateSound
---@field bHasSound boolean
---@field Sound FSlateSound
FCommonButtonStyleOptionalSlateSound = {}

---@return FCommonButtonStyleOptionalSlateSound
function FCommonButtonStyleOptionalSlateSound:get() end



---@class FCommonInputActionDataBase : FTableRowBase
---@field DisplayName FText
---@field HoldDisplayName FText
---@field NavBarPriority int32
---@field KeyboardInputTypeInfo FCommonInputTypeInfo
---@field DefaultGamepadInputTypeInfo FCommonInputTypeInfo
---@field GamepadInputOverrides TMap<FName, FCommonInputTypeInfo>
---@field TouchInputTypeInfo FCommonInputTypeInfo
FCommonInputActionDataBase = {}

---@return FCommonInputActionDataBase
function FCommonInputActionDataBase:get() end



---@class FCommonInputActionHandlerData
---@field InputActionRow FDataTableRowHandle
---@field State EInputActionState
FCommonInputActionHandlerData = {}

---@return FCommonInputActionHandlerData
function FCommonInputActionHandlerData:get() end



---@class FCommonInputTypeInfo
---@field Key FKey
---@field OverrrideState EInputActionState
---@field bActionRequiresHold boolean
---@field HoldTime float
---@field OverrideBrush FSlateBrush
FCommonInputTypeInfo = {}

---@return FCommonInputTypeInfo
function FCommonInputTypeInfo:get() end



---@class FCommonNumberFormattingOptions
---@field RoundingMode ERoundingMode
---@field UseGrouping boolean
---@field MinimumIntegralDigits int32
---@field MaximumIntegralDigits int32
---@field MinimumFractionalDigits int32
---@field MaximumFractionalDigits int32
FCommonNumberFormattingOptions = {}

---@return FCommonNumberFormattingOptions
function FCommonNumberFormattingOptions:get() end



---@class FCommonRegisteredTabInfo
---@field TabIndex int32
---@field TabButton UCommonButtonBase
---@field ContentInstance UWidget
FCommonRegisteredTabInfo = {}

---@return FCommonRegisteredTabInfo
function FCommonRegisteredTabInfo:get() end



---@class FRichTextIconData : FTableRowBase
---@field DisplayName FText
---@field ResourceObject TSoftObjectPtr<UObject>
---@field ImageSize FVector2D
FRichTextIconData = {}

---@return FRichTextIconData
function FRichTextIconData:get() end



---@class FUIActionKeyMapping
---@field Key FKey
---@field HoldTime float
FUIActionKeyMapping = {}

---@return FUIActionKeyMapping
function FUIActionKeyMapping:get() end



---@class FUIActionTag : FUITag
FUIActionTag = {}

---@return FUIActionTag
function FUIActionTag:get() end


---@class FUIInputAction
---@field ActionTag FUIActionTag
---@field DefaultDisplayName FText
---@field KeyMappings TArray<FUIActionKeyMapping>
FUIInputAction = {}

---@return FUIInputAction
function FUIInputAction:get() end



---@class FUITag : FGameplayTag
FUITag = {}

---@return FUITag
function FUITag:get() end


---@class ICommonActionHandlerInterface : IInterface
ICommonActionHandlerInterface = {}

---@return ICommonActionHandlerInterface
function ICommonActionHandlerInterface:get() end


---@class ICommonBoundActionButtonInterface : IInterface
ICommonBoundActionButtonInterface = {}

---@return ICommonBoundActionButtonInterface
function ICommonBoundActionButtonInterface:get() end


---@class ICommonPoolableWidgetInterface : IInterface
ICommonPoolableWidgetInterface = {}

---@return ICommonPoolableWidgetInterface
function ICommonPoolableWidgetInterface:get() end

function ICommonPoolableWidgetInterface:OnReleaseToPool() end
function ICommonPoolableWidgetInterface:OnAcquireFromPool() end


---@class UAnalogSlider : USlider
---@field OnAnalogCapture FAnalogSliderOnAnalogCapture
UAnalogSlider = {}

---@return UAnalogSlider
function UAnalogSlider:get() end



---@class UCommonActionWidget : UWidget
---@field OnInputMethodChanged FCommonActionWidgetOnInputMethodChanged
---@field ProgressMaterialBrush FSlateBrush
---@field ProgressMaterialParam FName
---@field IconRimBrush FSlateBrush
---@field InputActions TArray<FDataTableRowHandle>
---@field ProgressDynamicMaterial UMaterialInstanceDynamic
UCommonActionWidget = {}

---@return UCommonActionWidget
function UCommonActionWidget:get() end

---@param NewInputActions TArray<FDataTableRowHandle>
function UCommonActionWidget:SetInputActions(NewInputActions) end
---@param InputActionRow FDataTableRowHandle
function UCommonActionWidget:SetInputAction(InputActionRow) end
---@param InIconRimBrush FSlateBrush
function UCommonActionWidget:SetIconRimBrush(InIconRimBrush) end
---@param bUsingGamepad boolean
function UCommonActionWidget:OnInputMethodChanged__DelegateSignature(bUsingGamepad) end
---@return boolean
function UCommonActionWidget:IsHeldAction() end
---@return FSlateBrush
function UCommonActionWidget:GetIcon() end
---@return FText
function UCommonActionWidget:GetDisplayText() end


---@class UCommonActivatableWidget : UCommonUserWidget
---@field bIsBackHandler boolean
---@field bIsBackActionDisplayedInActionBar boolean
---@field bAutoActivate boolean
---@field bSupportsActivationFocus boolean
---@field bIsModal boolean
---@field bAutoRestoreFocus boolean
---@field bOverrideActionDomain boolean
---@field ActionDomainOverride TSoftObjectPtr<UCommonInputActionDomain>
---@field BP_OnWidgetActivated FCommonActivatableWidgetBP_OnWidgetActivated
---@field BP_OnWidgetDeactivated FCommonActivatableWidgetBP_OnWidgetDeactivated
---@field bIsActive boolean
---@field VisibilityBoundWidgets TArray<TWeakObjectPtr<UCommonActivatableWidget>>
---@field bSetVisibilityOnActivated boolean
---@field ActivatedVisibility ESlateVisibility
---@field bSetVisibilityOnDeactivated boolean
---@field DeactivatedVisibility ESlateVisibility
UCommonActivatableWidget = {}

---@return UCommonActivatableWidget
function UCommonActivatableWidget:get() end

---@param OnActivatedVisibility ESlateVisibility
---@param OnDeactivatedVisibility ESlateVisibility
---@param bInAllActive boolean
function UCommonActivatableWidget:SetBindVisibilities(OnActivatedVisibility, OnDeactivatedVisibility, bInAllActive) end
---@return boolean
function UCommonActivatableWidget:IsActivated() end
---@return UWidget
function UCommonActivatableWidget:GetDesiredFocusTarget() end
function UCommonActivatableWidget:DeactivateWidget() end
---@return boolean
function UCommonActivatableWidget:BP_OnHandleBackAction() end
function UCommonActivatableWidget:BP_OnDeactivated() end
function UCommonActivatableWidget:BP_OnActivated() end
---@return UWidget
function UCommonActivatableWidget:BP_GetDesiredFocusTarget() end
---@param ActivatableWidget UCommonActivatableWidget
function UCommonActivatableWidget:BindVisibilityToActivation(ActivatableWidget) end
function UCommonActivatableWidget:ActivateWidget() end


---@class UCommonActivatableWidgetContainerBase : UWidget
---@field TransitionType ECommonSwitcherTransition
---@field TransitionCurveType ETransitionCurve
---@field TransitionDuration float
---@field WidgetList TArray<UCommonActivatableWidget>
---@field DisplayedWidget UCommonActivatableWidget
---@field GeneratedWidgetsPool FUserWidgetPool
UCommonActivatableWidgetContainerBase = {}

---@return UCommonActivatableWidgetContainerBase
function UCommonActivatableWidgetContainerBase:get() end

---@param Duration float
function UCommonActivatableWidgetContainerBase:SetTransitionDuration(Duration) end
---@param WidgetToRemove UCommonActivatableWidget
function UCommonActivatableWidgetContainerBase:RemoveWidget(WidgetToRemove) end
---@return float
function UCommonActivatableWidgetContainerBase:GetTransitionDuration() end
---@return UCommonActivatableWidget
function UCommonActivatableWidgetContainerBase:GetActiveWidget() end
function UCommonActivatableWidgetContainerBase:ClearWidgets() end
---@param ActivatableWidgetClass TSubclassOf<UCommonActivatableWidget>
---@return UCommonActivatableWidget
function UCommonActivatableWidgetContainerBase:BP_AddWidget(ActivatableWidgetClass) end


---@class UCommonActivatableWidgetQueue : UCommonActivatableWidgetContainerBase
UCommonActivatableWidgetQueue = {}

---@return UCommonActivatableWidgetQueue
function UCommonActivatableWidgetQueue:get() end


---@class UCommonActivatableWidgetStack : UCommonActivatableWidgetContainerBase
---@field RootContentWidgetClass TSubclassOf<UCommonActivatableWidget>
---@field RootContentWidget UCommonActivatableWidget
UCommonActivatableWidgetStack = {}

---@return UCommonActivatableWidgetStack
function UCommonActivatableWidgetStack:get() end



---@class UCommonActivatableWidgetSwitcher : UCommonAnimatedSwitcher
UCommonActivatableWidgetSwitcher = {}

---@return UCommonActivatableWidgetSwitcher
function UCommonActivatableWidgetSwitcher:get() end


---@class UCommonAnimatedSwitcher : UWidgetSwitcher
---@field TransitionType ECommonSwitcherTransition
---@field TransitionCurveType ETransitionCurve
---@field TransitionDuration float
UCommonAnimatedSwitcher = {}

---@return UCommonAnimatedSwitcher
function UCommonAnimatedSwitcher:get() end

---@param bDisableAnimation boolean
function UCommonAnimatedSwitcher:SetDisableTransitionAnimation(bDisableAnimation) end
---@return boolean
function UCommonAnimatedSwitcher:IsTransitionPlaying() end
---@return boolean
function UCommonAnimatedSwitcher:IsCurrentlySwitching() end
---@return boolean
function UCommonAnimatedSwitcher:HasWidgets() end
---@param bCanWrap boolean
function UCommonAnimatedSwitcher:ActivatePreviousWidget(bCanWrap) end
---@param bCanWrap boolean
function UCommonAnimatedSwitcher:ActivateNextWidget(bCanWrap) end


---@class UCommonBorder : UBorder
---@field Style TSubclassOf<UCommonBorderStyle>
---@field bReducePaddingBySafezone boolean
---@field MinimumPadding FMargin
UCommonBorder = {}

---@return UCommonBorder
function UCommonBorder:get() end

---@param InStyle TSubclassOf<UCommonBorderStyle>
function UCommonBorder:SetStyle(InStyle) end


---@class UCommonBorderStyle : UObject
---@field Background FSlateBrush
UCommonBorderStyle = {}

---@return UCommonBorderStyle
function UCommonBorderStyle:get() end

---@param Brush FSlateBrush
function UCommonBorderStyle:GetBackgroundBrush(Brush) end


---@class UCommonBoundActionBar : UDynamicEntryBoxBase
---@field ActionButtonClass TSubclassOf<UCommonButtonBase>
---@field bDisplayOwningPlayerActionsOnly boolean
---@field bIgnoreDuplicateActions boolean
UCommonBoundActionBar = {}

---@return UCommonBoundActionBar
function UCommonBoundActionBar:get() end

---@param bShouldOnlyDisplayOwningPlayerActions boolean
function UCommonBoundActionBar:SetDisplayOwningPlayerActionsOnly(bShouldOnlyDisplayOwningPlayerActions) end


---@class UCommonBoundActionButton : UCommonButtonBase
---@field Text_ActionName UCommonTextBlock
UCommonBoundActionButton = {}

---@return UCommonBoundActionButton
function UCommonBoundActionButton:get() end

function UCommonBoundActionButton:OnUpdateInputAction() end


---@class UCommonButtonBase : UCommonUserWidget
---@field MinWidth int32
---@field minHeight int32
---@field Style TSubclassOf<UCommonButtonStyle>
---@field bHideInputAction boolean
---@field PressedSlateSoundOverride FSlateSound
---@field HoveredSlateSoundOverride FSlateSound
---@field SelectedPressedSlateSoundOverride FSlateSound
---@field SelectedHoveredSlateSoundOverride FSlateSound
---@field LockedPressedSlateSoundOverride FSlateSound
---@field LockedHoveredSlateSoundOverride FSlateSound
---@field bApplyAlphaOnDisable boolean
---@field bLocked boolean
---@field bSelectable boolean
---@field bShouldSelectUponReceivingFocus boolean
---@field bInteractableWhenSelected boolean
---@field bToggleable boolean
---@field bTriggerClickedAfterSelection boolean
---@field bDisplayInputActionWhenNotInteractable boolean
---@field bHideInputActionWithKeyboard boolean
---@field bShouldUseFallbackDefaultInputAction boolean
---@field ClickMethod EButtonClickMethod::Type
---@field TouchMethod EButtonTouchMethod::Type
---@field PressMethod EButtonPressMethod::Type
---@field InputPriority int32
---@field TriggeringInputAction FDataTableRowHandle
---@field OnSelectedChangedBase FCommonButtonBaseOnSelectedChangedBase
---@field OnButtonBaseClicked FCommonButtonBaseOnButtonBaseClicked
---@field OnButtonBaseDoubleClicked FCommonButtonBaseOnButtonBaseDoubleClicked
---@field OnButtonBaseHovered FCommonButtonBaseOnButtonBaseHovered
---@field OnButtonBaseUnhovered FCommonButtonBaseOnButtonBaseUnhovered
---@field bIsPersistentBinding boolean
---@field InputModeOverride ECommonInputMode
---@field SingleMaterialStyleMID UMaterialInstanceDynamic
---@field NormalStyle FButtonStyle
---@field SelectedStyle FButtonStyle
---@field DisabledStyle FButtonStyle
---@field LockedStyle FButtonStyle
---@field bStopDoubleClickPropagation boolean
---@field InputActionWidget UCommonActionWidget
UCommonButtonBase = {}

---@return UCommonButtonBase
function UCommonButtonBase:get() end

function UCommonButtonBase:StopDoubleClickPropagation() end
---@param InputActionRow FDataTableRowHandle
function UCommonButtonBase:SetTriggeringInputAction(InputActionRow) end
---@param InputActionRow FDataTableRowHandle
function UCommonButtonBase:SetTriggeredInputAction(InputActionRow) end
---@param InTouchMethod EButtonTouchMethod::Type
function UCommonButtonBase:SetTouchMethod(InTouchMethod) end
---@param InStyle TSubclassOf<UCommonButtonStyle>
function UCommonButtonBase:SetStyle(InStyle) end
---@param bInShouldUseFallbackDefaultInputAction boolean
function UCommonButtonBase:SetShouldUseFallbackDefaultInputAction(bInShouldUseFallbackDefaultInputAction) end
---@param bInShouldSelectUponReceivingFocus boolean
function UCommonButtonBase:SetShouldSelectUponReceivingFocus(bInShouldSelectUponReceivingFocus) end
---@param Sound USoundBase
function UCommonButtonBase:SetSelectedPressedSoundOverride(Sound) end
---@param bInSelected boolean
---@param bAllowSound boolean
---@param bBroadcast boolean
function UCommonButtonBase:SetSelectedInternal(bInSelected, bAllowSound, bBroadcast) end
---@param Sound USoundBase
function UCommonButtonBase:SetSelectedHoveredSoundOverride(Sound) end
---@param InPressMethod EButtonPressMethod::Type
function UCommonButtonBase:SetPressMethod(InPressMethod) end
---@param Sound USoundBase
function UCommonButtonBase:SetPressedSoundOverride(Sound) end
---@param InMinWidth int32
---@param InMinHeight int32
function UCommonButtonBase:SetMinDimensions(InMinWidth, InMinHeight) end
---@param Sound USoundBase
function UCommonButtonBase:SetLockedPressedSoundOverride(Sound) end
---@param Sound USoundBase
function UCommonButtonBase:SetLockedHoveredSoundOverride(Sound) end
---@param bInIsToggleable boolean
function UCommonButtonBase:SetIsToggleable(bInIsToggleable) end
---@param InSelected boolean
---@param bGiveClickFeedback boolean
function UCommonButtonBase:SetIsSelected(InSelected, bGiveClickFeedback) end
---@param bInIsSelectable boolean
function UCommonButtonBase:SetIsSelectable(bInIsSelectable) end
---@param bInIsLocked boolean
function UCommonButtonBase:SetIsLocked(bInIsLocked) end
---@param bInIsInteractionEnabled boolean
function UCommonButtonBase:SetIsInteractionEnabled(bInIsInteractionEnabled) end
---@param bInInteractableWhenSelected boolean
function UCommonButtonBase:SetIsInteractableWhenSelected(bInInteractableWhenSelected) end
---@param bInIsFocusable boolean
function UCommonButtonBase:SetIsFocusable(bInIsFocusable) end
---@param InProgressMaterialBrush FSlateBrush
---@param InProgressMaterialParam FName
function UCommonButtonBase:SetInputActionProgressMaterial(InProgressMaterialBrush, InProgressMaterialParam) end
---@param Sound USoundBase
function UCommonButtonBase:SetHoveredSoundOverride(Sound) end
---@param bInHideInputAction boolean
function UCommonButtonBase:SetHideInputAction(bInHideInputAction) end
---@param InClickMethod EButtonClickMethod::Type
function UCommonButtonBase:SetClickMethod(InClickMethod) end
---@param NewTriggeredAction FDataTableRowHandle
function UCommonButtonBase:OnTriggeringInputActionChanged(NewTriggeredAction) end
---@param NewTriggeredAction FDataTableRowHandle
function UCommonButtonBase:OnTriggeredInputActionChanged(NewTriggeredAction) end
---@param CurrentInputType ECommonInputType
function UCommonButtonBase:OnInputMethodChanged(CurrentInputType) end
function UCommonButtonBase:OnCurrentTextStyleChanged() end
---@param HeldPercent float
function UCommonButtonBase:OnActionProgress(HeldPercent) end
function UCommonButtonBase:OnActionComplete() end
---@param HeldPercent float
function UCommonButtonBase:NativeOnActionProgress(HeldPercent) end
function UCommonButtonBase:NativeOnActionComplete() end
---@return boolean
function UCommonButtonBase:IsPressed() end
---@return boolean
function UCommonButtonBase:IsInteractionEnabled() end
---@param bPassThrough boolean
function UCommonButtonBase:HandleTriggeringActionCommited(bPassThrough) end
function UCommonButtonBase:HandleFocusReceived() end
function UCommonButtonBase:HandleFocusLost() end
function UCommonButtonBase:HandleButtonReleased() end
function UCommonButtonBase:HandleButtonPressed() end
function UCommonButtonBase:HandleButtonClicked() end
---@return UCommonButtonStyle
function UCommonButtonBase:GetStyle() end
---@return UMaterialInstanceDynamic
function UCommonButtonBase:GetSingleMaterialStyleMID() end
---@return boolean
function UCommonButtonBase:GetShouldSelectUponReceivingFocus() end
---@return boolean
function UCommonButtonBase:GetSelected() end
---@return boolean
function UCommonButtonBase:GetLocked() end
---@return boolean
function UCommonButtonBase:GetIsFocusable() end
---@param InputActionRow FDataTableRowHandle
---@return boolean
function UCommonButtonBase:GetInputAction(InputActionRow) end
---@return TSubclassOf<UCommonTextStyle>
function UCommonButtonBase:GetCurrentTextStyleClass() end
---@return UCommonTextStyle
function UCommonButtonBase:GetCurrentTextStyle() end
---@param OutCustomPadding FMargin
function UCommonButtonBase:GetCurrentCustomPadding(OutCustomPadding) end
---@param OutButtonPadding FMargin
function UCommonButtonBase:GetCurrentButtonPadding(OutButtonPadding) end
---@param DisabledReason FText
function UCommonButtonBase:DisableButtonWithReason(DisabledReason) end
function UCommonButtonBase:ClearSelection() end
function UCommonButtonBase:BP_OnUnhovered() end
function UCommonButtonBase:BP_OnSelected() end
function UCommonButtonBase:BP_OnReleased() end
function UCommonButtonBase:BP_OnPressed() end
---@param bIsLocked boolean
function UCommonButtonBase:BP_OnLockedChanged(bIsLocked) end
function UCommonButtonBase:BP_OnLockDoubleClicked() end
function UCommonButtonBase:BP_OnLockClicked() end
---@param CurrentInputType ECommonInputType
function UCommonButtonBase:BP_OnInputMethodChanged(CurrentInputType) end
function UCommonButtonBase:BP_OnHovered() end
function UCommonButtonBase:BP_OnFocusReceived() end
function UCommonButtonBase:BP_OnFocusLost() end
function UCommonButtonBase:BP_OnEnabled() end
function UCommonButtonBase:BP_OnDoubleClicked() end
function UCommonButtonBase:BP_OnDisabled() end
function UCommonButtonBase:BP_OnDeselected() end
function UCommonButtonBase:BP_OnClicked() end


---@class UCommonButtonGroupBase : UCommonWidgetGroupBase
---@field OnSelectedButtonBaseChanged FCommonButtonGroupBaseOnSelectedButtonBaseChanged
---@field OnHoveredButtonBaseChanged FCommonButtonGroupBaseOnHoveredButtonBaseChanged
---@field OnButtonBaseClicked FCommonButtonGroupBaseOnButtonBaseClicked
---@field OnButtonBaseDoubleClicked FCommonButtonGroupBaseOnButtonBaseDoubleClicked
---@field OnSelectionCleared FCommonButtonGroupBaseOnSelectionCleared
---@field bSelectionRequired boolean
UCommonButtonGroupBase = {}

---@return UCommonButtonGroupBase
function UCommonButtonGroupBase:get() end

---@param bRequireSelection boolean
function UCommonButtonGroupBase:SetSelectionRequired(bRequireSelection) end
---@param bAllowWrap boolean
function UCommonButtonGroupBase:SelectPreviousButton(bAllowWrap) end
---@param bAllowWrap boolean
function UCommonButtonGroupBase:SelectNextButton(bAllowWrap) end
---@param ButtonIndex int32
---@param bAllowSound boolean
function UCommonButtonGroupBase:SelectButtonAtIndex(ButtonIndex, bAllowSound) end
---@param BaseButton UCommonButtonBase
---@param bIsSelected boolean
function UCommonButtonGroupBase:OnSelectionStateChangedBase(BaseButton, bIsSelected) end
---@param BaseButton UCommonButtonBase
function UCommonButtonGroupBase:OnHandleButtonBaseDoubleClicked(BaseButton) end
---@param BaseButton UCommonButtonBase
function UCommonButtonGroupBase:OnHandleButtonBaseClicked(BaseButton) end
---@param BaseButton UCommonButtonBase
function UCommonButtonGroupBase:OnButtonBaseUnhovered(BaseButton) end
---@param BaseButton UCommonButtonBase
function UCommonButtonGroupBase:OnButtonBaseHovered(BaseButton) end
---@return boolean
function UCommonButtonGroupBase:HasAnyButtons() end
---@return int32
function UCommonButtonGroupBase:GetSelectedButtonIndex() end
---@return UCommonButtonBase
function UCommonButtonGroupBase:GetSelectedButtonBase() end
---@return int32
function UCommonButtonGroupBase:GetHoveredButtonIndex() end
---@return int32
function UCommonButtonGroupBase:GetButtonCount() end
---@param Index int32
---@return UCommonButtonBase
function UCommonButtonGroupBase:GetButtonBaseAtIndex(Index) end
---@param ButtonToFind UCommonButtonBase
---@return int32
function UCommonButtonGroupBase:FindButtonIndex(ButtonToFind) end
function UCommonButtonGroupBase:DeselectAll() end


---@class UCommonButtonInternalBase : UButton
---@field OnDoubleClicked FCommonButtonInternalBaseOnDoubleClicked
---@field MinWidth int32
---@field minHeight int32
---@field bButtonEnabled boolean
---@field bInteractionEnabled boolean
UCommonButtonInternalBase = {}

---@return UCommonButtonInternalBase
function UCommonButtonInternalBase:get() end



---@class UCommonButtonStyle : UObject
---@field bSingleMaterial boolean
---@field SingleMaterialBrush FSlateBrush
---@field NormalBase FSlateBrush
---@field NormalHovered FSlateBrush
---@field NormalPressed FSlateBrush
---@field SelectedBase FSlateBrush
---@field SelectedHovered FSlateBrush
---@field SelectedPressed FSlateBrush
---@field Disabled FSlateBrush
---@field ButtonPadding FMargin
---@field CustomPadding FMargin
---@field MinWidth int32
---@field minHeight int32
---@field NormalTextStyle TSubclassOf<UCommonTextStyle>
---@field NormalHoveredTextStyle TSubclassOf<UCommonTextStyle>
---@field SelectedTextStyle TSubclassOf<UCommonTextStyle>
---@field SelectedHoveredTextStyle TSubclassOf<UCommonTextStyle>
---@field DisabledTextStyle TSubclassOf<UCommonTextStyle>
---@field PressedSlateSound FSlateSound
---@field SelectedPressedSlateSound FCommonButtonStyleOptionalSlateSound
---@field LockedPressedSlateSound FCommonButtonStyleOptionalSlateSound
---@field HoveredSlateSound FSlateSound
---@field SelectedHoveredSlateSound FCommonButtonStyleOptionalSlateSound
---@field LockedHoveredSlateSound FCommonButtonStyleOptionalSlateSound
UCommonButtonStyle = {}

---@return UCommonButtonStyle
function UCommonButtonStyle:get() end

---@return UCommonTextStyle
function UCommonButtonStyle:GetSelectedTextStyle() end
---@param Brush FSlateBrush
function UCommonButtonStyle:GetSelectedPressedBrush(Brush) end
---@return UCommonTextStyle
function UCommonButtonStyle:GetSelectedHoveredTextStyle() end
---@param Brush FSlateBrush
function UCommonButtonStyle:GetSelectedHoveredBrush(Brush) end
---@param Brush FSlateBrush
function UCommonButtonStyle:GetSelectedBaseBrush(Brush) end
---@return UCommonTextStyle
function UCommonButtonStyle:GetNormalTextStyle() end
---@param Brush FSlateBrush
function UCommonButtonStyle:GetNormalPressedBrush(Brush) end
---@return UCommonTextStyle
function UCommonButtonStyle:GetNormalHoveredTextStyle() end
---@param Brush FSlateBrush
function UCommonButtonStyle:GetNormalHoveredBrush(Brush) end
---@param Brush FSlateBrush
function UCommonButtonStyle:GetNormalBaseBrush(Brush) end
---@param Brush FSlateBrush
function UCommonButtonStyle:GetMaterialBrush(Brush) end
---@return UCommonTextStyle
function UCommonButtonStyle:GetDisabledTextStyle() end
---@param Brush FSlateBrush
function UCommonButtonStyle:GetDisabledBrush(Brush) end
---@param OutCustomPadding FMargin
function UCommonButtonStyle:GetCustomPadding(OutCustomPadding) end
---@param OutButtonPadding FMargin
function UCommonButtonStyle:GetButtonPadding(OutButtonPadding) end


---@class UCommonCustomNavigation : UBorder
---@field OnNavigationEvent FCommonCustomNavigationOnNavigationEvent
UCommonCustomNavigation = {}

---@return UCommonCustomNavigation
function UCommonCustomNavigation:get() end



---@class UCommonDateTimeTextBlock : UCommonTextBlock
UCommonDateTimeTextBlock = {}

---@return UCommonDateTimeTextBlock
function UCommonDateTimeTextBlock:get() end

---@param InTimespan FTimespan
function UCommonDateTimeTextBlock:SetTimespanValue(InTimespan) end
---@param InDateTime FDateTime
---@param bShowAsCountdown boolean
---@param InRefreshDelay float
function UCommonDateTimeTextBlock:SetDateTimeValue(InDateTime, bShowAsCountdown, InRefreshDelay) end
---@param InCompletionText FText
function UCommonDateTimeTextBlock:SetCountDownCompletionText(InCompletionText) end
---@return FDateTime
function UCommonDateTimeTextBlock:GetDateTime() end


---@class UCommonGameViewportClient : UGameViewportClient
UCommonGameViewportClient = {}

---@return UCommonGameViewportClient
function UCommonGameViewportClient:get() end


---@class UCommonGenericInputActionDataTable : UDataTable
UCommonGenericInputActionDataTable = {}

---@return UCommonGenericInputActionDataTable
function UCommonGenericInputActionDataTable:get() end


---@class UCommonHardwareVisibilityBorder : UCommonBorder
---@field VisibilityQuery FGameplayTagQuery
---@field VisibleType ESlateVisibility
---@field HiddenType ESlateVisibility
UCommonHardwareVisibilityBorder = {}

---@return UCommonHardwareVisibilityBorder
function UCommonHardwareVisibilityBorder:get() end



---@class UCommonHierarchicalScrollBox : UScrollBox
UCommonHierarchicalScrollBox = {}

---@return UCommonHierarchicalScrollBox
function UCommonHierarchicalScrollBox:get() end


---@class UCommonInputActionDataProcessor : UObject
UCommonInputActionDataProcessor = {}

---@return UCommonInputActionDataProcessor
function UCommonInputActionDataProcessor:get() end


---@class UCommonLazyImage : UImage
---@field LoadingBackgroundBrush FSlateBrush
---@field MaterialTextureParamName FName
---@field BP_OnLoadingStateChanged FCommonLazyImageBP_OnLoadingStateChanged
UCommonLazyImage = {}

---@return UCommonLazyImage
function UCommonLazyImage:get() end

---@param TextureParamName FName
function UCommonLazyImage:SetMaterialTextureParamName(TextureParamName) end
---@param LazyTexture TSoftObjectPtr<UTexture2D>
---@param bMatchSize boolean
function UCommonLazyImage:SetBrushFromLazyTexture(LazyTexture, bMatchSize) end
---@param LazyMaterial TSoftObjectPtr<UMaterialInterface>
function UCommonLazyImage:SetBrushFromLazyMaterial(LazyMaterial) end
---@param LazyObject TSoftObjectPtr<UObject>
---@param bMatchTextureSize boolean
function UCommonLazyImage:SetBrushFromLazyDisplayAsset(LazyObject, bMatchTextureSize) end
---@return boolean
function UCommonLazyImage:IsLoading() end


---@class UCommonLazyWidget : UWidget
---@field LoadingBackgroundBrush FSlateBrush
---@field Content UUserWidget
---@field BP_OnLoadingStateChanged FCommonLazyWidgetBP_OnLoadingStateChanged
UCommonLazyWidget = {}

---@return UCommonLazyWidget
function UCommonLazyWidget:get() end

---@param SoftWidget TSoftClassPtr<UUserWidget>
function UCommonLazyWidget:SetLazyContent(SoftWidget) end
---@return boolean
function UCommonLazyWidget:IsLoading() end
---@return UUserWidget
function UCommonLazyWidget:GetContent() end


---@class UCommonListView : UListView
UCommonListView = {}

---@return UCommonListView
function UCommonListView:get() end

---@param InEntrySpacing float
function UCommonListView:SetEntrySpacing(InEntrySpacing) end


---@class UCommonLoadGuard : UContentWidget
---@field LoadingBackgroundBrush FSlateBrush
---@field ThrobberAlignment EHorizontalAlignment
---@field ThrobberPadding FMargin
---@field LoadingText FText
---@field TextStyle TSubclassOf<UCommonTextStyle>
---@field BP_OnLoadingStateChanged FCommonLoadGuardBP_OnLoadingStateChanged
---@field SpinnerMaterialPath FSoftObjectPath
UCommonLoadGuard = {}

---@return UCommonLoadGuard
function UCommonLoadGuard:get() end

---@param InLoadingText FText
function UCommonLoadGuard:SetLoadingText(InLoadingText) end
---@param bInIsLoading boolean
function UCommonLoadGuard:SetIsLoading(bInIsLoading) end
---@param Object UObject
function UCommonLoadGuard:OnAssetLoaded__DelegateSignature(Object) end
---@return boolean
function UCommonLoadGuard:IsLoading() end
---@param InLazyAsset TSoftObjectPtr<UObject>
---@param OnAssetLoaded FBP_GuardAndLoadAssetOnAssetLoaded
function UCommonLoadGuard:BP_GuardAndLoadAsset(InLazyAsset, OnAssetLoaded) end


---@class UCommonNumericTextBlock : UCommonTextBlock
---@field OnInterpolationStartedEvent FCommonNumericTextBlockOnInterpolationStartedEvent
---@field OnInterpolationUpdatedEvent FCommonNumericTextBlockOnInterpolationUpdatedEvent
---@field OnOutroEvent FCommonNumericTextBlockOnOutroEvent
---@field OnInterpolationEndedEvent FCommonNumericTextBlockOnInterpolationEndedEvent
---@field CurrentNumericValue float
---@field NumericType ECommonNumericType
---@field FormattingSpecification FCommonNumberFormattingOptions
---@field EaseOutInterpolationExponent float
---@field InterpolationUpdateInterval float
---@field PostInterpolationShrinkDuration float
---@field PerformSizeInterpolation boolean
---@field IsPercentage boolean
UCommonNumericTextBlock = {}

---@return UCommonNumericTextBlock
function UCommonNumericTextBlock:get() end

---@param InNumericType ECommonNumericType
function UCommonNumericTextBlock:SetNumericType(InNumericType) end
---@param NewValue float
function UCommonNumericTextBlock:SetCurrentValue(NewValue) end
---@param NumericTextBlock UCommonNumericTextBlock
function UCommonNumericTextBlock:OnOutro__DelegateSignature(NumericTextBlock) end
---@param NumericTextBlock UCommonNumericTextBlock
---@param LastValue float
---@param NewValue float
function UCommonNumericTextBlock:OnInterpolationUpdated__DelegateSignature(NumericTextBlock, LastValue, NewValue) end
---@param NumericTextBlock UCommonNumericTextBlock
function UCommonNumericTextBlock:OnInterpolationStarted__DelegateSignature(NumericTextBlock) end
---@param NumericTextBlock UCommonNumericTextBlock
---@param HadCompleted boolean
function UCommonNumericTextBlock:OnInterpolationEnded__DelegateSignature(NumericTextBlock, HadCompleted) end
---@return boolean
function UCommonNumericTextBlock:IsInterpolatingNumericValue() end
---@param TargetValue float
---@param MaximumInterpolationDuration float
---@param MinimumChangeRate float
---@param OutroOffset float
function UCommonNumericTextBlock:InterpolateToValue(TargetValue, MaximumInterpolationDuration, MinimumChangeRate, OutroOffset) end
---@return float
function UCommonNumericTextBlock:GetTargetValue() end


---@class UCommonRichTextBlock : URichTextBlock
---@field InlineIconDisplayMode ERichTextInlineIconDisplayMode
---@field bTintInlineIcon boolean
---@field DefaultTextStyleOverrideClass TSubclassOf<UCommonTextStyle>
---@field MobileTextBlockScale float
---@field ScrollStyle TSubclassOf<UCommonTextScrollStyle>
---@field bIsScrollingEnabled boolean
---@field bDisplayAllCaps boolean
---@field bAutoCollapseWithEmptyText boolean
UCommonRichTextBlock = {}

---@return UCommonRichTextBlock
function UCommonRichTextBlock:get() end

---@param bInIsScrollingEnabled boolean
function UCommonRichTextBlock:SetScrollingEnabled(bInIsScrollingEnabled) end


---@class UCommonRotator : UCommonButtonBase
---@field OnRotated FCommonRotatorOnRotated
---@field MyText UCommonTextBlock
UCommonRotator = {}

---@return UCommonRotator
function UCommonRotator:get() end

function UCommonRotator:ShiftTextRight() end
function UCommonRotator:ShiftTextLeft() end
---@param InValue int32
function UCommonRotator:SetSelectedItem(InValue) end
---@param Labels TArray<FText>
function UCommonRotator:PopulateTextLabels(Labels) end
---@return FText
function UCommonRotator:GetSelectedText() end
---@return int32
function UCommonRotator:GetSelectedIndex() end
---@param Count int32
function UCommonRotator:BP_OnOptionsPopulated(Count) end
---@param Index int32
function UCommonRotator:BP_OnOptionSelected(Index) end


---@class UCommonStyleSheet : UDataAsset
---@field Properties TArray<UCommonStyleSheetTypeBase>
---@field ImportedStyleSheets TArray<UCommonStyleSheet>
UCommonStyleSheet = {}

---@return UCommonStyleSheet
function UCommonStyleSheet:get() end



---@class UCommonStyleSheetTypeBase : UObject
---@field bIsEnabled boolean
UCommonStyleSheetTypeBase = {}

---@return UCommonStyleSheetTypeBase
function UCommonStyleSheetTypeBase:get() end



---@class UCommonStyleSheetTypeColor : UCommonStyleSheetTypeBase
---@field Color FLinearColor
UCommonStyleSheetTypeColor = {}

---@return UCommonStyleSheetTypeColor
function UCommonStyleSheetTypeColor:get() end



---@class UCommonStyleSheetTypeFontLetterSpacing : UCommonStyleSheetTypeBase
---@field LetterSpacing int32
UCommonStyleSheetTypeFontLetterSpacing = {}

---@return UCommonStyleSheetTypeFontLetterSpacing
function UCommonStyleSheetTypeFontLetterSpacing:get() end



---@class UCommonStyleSheetTypeFontSize : UCommonStyleSheetTypeBase
---@field Size int32
UCommonStyleSheetTypeFontSize = {}

---@return UCommonStyleSheetTypeFontSize
function UCommonStyleSheetTypeFontSize:get() end



---@class UCommonStyleSheetTypeFontTypeface : UCommonStyleSheetTypeBase
---@field Typeface FSlateFontInfo
UCommonStyleSheetTypeFontTypeface = {}

---@return UCommonStyleSheetTypeFontTypeface
function UCommonStyleSheetTypeFontTypeface:get() end



---@class UCommonStyleSheetTypeLineHeightPercentage : UCommonStyleSheetTypeBase
---@field LineHeightPercentage float
UCommonStyleSheetTypeLineHeightPercentage = {}

---@return UCommonStyleSheetTypeLineHeightPercentage
function UCommonStyleSheetTypeLineHeightPercentage:get() end



---@class UCommonStyleSheetTypeMarginBottom : UCommonStyleSheetTypeBase
---@field Bottom float
UCommonStyleSheetTypeMarginBottom = {}

---@return UCommonStyleSheetTypeMarginBottom
function UCommonStyleSheetTypeMarginBottom:get() end



---@class UCommonStyleSheetTypeMarginLeft : UCommonStyleSheetTypeBase
---@field Left float
UCommonStyleSheetTypeMarginLeft = {}

---@return UCommonStyleSheetTypeMarginLeft
function UCommonStyleSheetTypeMarginLeft:get() end



---@class UCommonStyleSheetTypeMarginRight : UCommonStyleSheetTypeBase
---@field Right float
UCommonStyleSheetTypeMarginRight = {}

---@return UCommonStyleSheetTypeMarginRight
function UCommonStyleSheetTypeMarginRight:get() end



---@class UCommonStyleSheetTypeMarginTop : UCommonStyleSheetTypeBase
---@field Top float
UCommonStyleSheetTypeMarginTop = {}

---@return UCommonStyleSheetTypeMarginTop
function UCommonStyleSheetTypeMarginTop:get() end



---@class UCommonStyleSheetTypeOpacity : UCommonStyleSheetTypeBase
---@field Opacity float
UCommonStyleSheetTypeOpacity = {}

---@return UCommonStyleSheetTypeOpacity
function UCommonStyleSheetTypeOpacity:get() end



---@class UCommonTabListWidgetBase : UCommonUserWidget
---@field OnTabSelected FCommonTabListWidgetBaseOnTabSelected
---@field OnTabButtonCreation FCommonTabListWidgetBaseOnTabButtonCreation
---@field OnTabButtonRemoval FCommonTabListWidgetBaseOnTabButtonRemoval
---@field OnTabListRebuilt FCommonTabListWidgetBaseOnTabListRebuilt
---@field NextTabInputActionData FDataTableRowHandle
---@field PreviousTabInputActionData FDataTableRowHandle
---@field bAutoListenForInput boolean
---@field bDeferRebuildingTabList boolean
---@field LinkedSwitcher TWeakObjectPtr<UCommonAnimatedSwitcher>
---@field TabButtonGroup UCommonButtonGroupBase
---@field RegisteredTabsByID TMap<FName, FCommonRegisteredTabInfo>
UCommonTabListWidgetBase = {}

---@return UCommonTabListWidgetBase
function UCommonTabListWidgetBase:get() end

---@param TabNameID FName
---@param NewVisibility ESlateVisibility
function UCommonTabListWidgetBase:SetTabVisibility(TabNameID, NewVisibility) end
---@param TabNameID FName
---@param bEnable boolean
function UCommonTabListWidgetBase:SetTabInteractionEnabled(TabNameID, bEnable) end
---@param TabNameID FName
---@param bEnable boolean
function UCommonTabListWidgetBase:SetTabEnabled(TabNameID, bEnable) end
---@param bShouldListen boolean
function UCommonTabListWidgetBase:SetListeningForInput(bShouldListen) end
---@param CommonSwitcher UCommonAnimatedSwitcher
function UCommonTabListWidgetBase:SetLinkedSwitcher(CommonSwitcher) end
---@param TabNameID FName
---@param bSuppressClickFeedback boolean
---@return boolean
function UCommonTabListWidgetBase:SelectTabByID(TabNameID, bSuppressClickFeedback) end
---@param TabNameID FName
---@return boolean
function UCommonTabListWidgetBase:RemoveTab(TabNameID) end
function UCommonTabListWidgetBase:RemoveAllTabs() end
---@param TabNameID FName
---@param ButtonWidgetType TSubclassOf<UCommonButtonBase>
---@param ContentWidget UWidget
---@param TabIndex int32
---@return boolean
function UCommonTabListWidgetBase:RegisterTab(TabNameID, ButtonWidgetType, ContentWidget, TabIndex) end
---@param TabId FName
function UCommonTabListWidgetBase:OnTabSelected__DelegateSignature(TabId) end
function UCommonTabListWidgetBase:OnTabListRebuilt__DelegateSignature() end
---@param TabId FName
---@param TabButton UCommonButtonBase
function UCommonTabListWidgetBase:OnTabButtonRemoval__DelegateSignature(TabId, TabButton) end
---@param TabId FName
---@param TabButton UCommonButtonBase
function UCommonTabListWidgetBase:OnTabButtonCreation__DelegateSignature(TabId, TabButton) end
---@param TabNameID FName
---@param TabButton UCommonButtonBase
function UCommonTabListWidgetBase:HandleTabRemoval(TabNameID, TabButton) end
---@param TabNameID FName
---@param TabButton UCommonButtonBase
function UCommonTabListWidgetBase:HandleTabCreation(TabNameID, TabButton) end
---@param SelectedTabButton UCommonButtonBase
---@param ButtonIndex int32
function UCommonTabListWidgetBase:HandleTabButtonSelected(SelectedTabButton, ButtonIndex) end
---@param bPassThrough boolean
function UCommonTabListWidgetBase:HandlePreviousTabInputAction(bPassThrough) end
function UCommonTabListWidgetBase:HandlePreLinkedSwitcherChanged_BP() end
function UCommonTabListWidgetBase:HandlePostLinkedSwitcherChanged_BP() end
---@param bPassThrough boolean
function UCommonTabListWidgetBase:HandleNextTabInputAction(bPassThrough) end
---@param Index int32
---@return FName
function UCommonTabListWidgetBase:GetTabIdAtIndex(Index) end
---@return int32
function UCommonTabListWidgetBase:GetTabCount() end
---@param TabNameID FName
---@return UCommonButtonBase
function UCommonTabListWidgetBase:GetTabButtonBaseByID(TabNameID) end
---@return FName
function UCommonTabListWidgetBase:GetSelectedTabId() end
---@return UCommonAnimatedSwitcher
function UCommonTabListWidgetBase:GetLinkedSwitcher() end
---@return FName
function UCommonTabListWidgetBase:GetActiveTab() end
---@param TabNameID FName
---@param Reason FText
function UCommonTabListWidgetBase:DisableTabWithReason(TabNameID, Reason) end


---@class UCommonTextBlock : UTextBlock
---@field Style TSubclassOf<UCommonTextStyle>
---@field ScrollStyle TSubclassOf<UCommonTextScrollStyle>
---@field StyleSheet UCommonStyleSheet
---@field bIsScrollingEnabled boolean
---@field bDisplayAllCaps boolean
---@field bAutoCollapseWithEmptyText boolean
---@field MobileFontSizeMultiplier float
UCommonTextBlock = {}

---@return UCommonTextBlock
function UCommonTextBlock:get() end

---@param InWrapTextAt int32
function UCommonTextBlock:SetWrapTextWidth(InWrapTextAt) end
---@param bUseAllCaps boolean
function UCommonTextBlock:SetTextCase(bUseAllCaps) end
---@param InStyle TSubclassOf<UCommonTextStyle>
function UCommonTextBlock:SetStyle(InStyle) end
---@param bInIsScrollingEnabled boolean
function UCommonTextBlock:SetScrollingEnabled(bInIsScrollingEnabled) end
---@param InMargin FMargin
function UCommonTextBlock:SetMargin(InMargin) end
---@param InLineHeightPercentage float
function UCommonTextBlock:SetLineHeightPercentage(InLineHeightPercentage) end
function UCommonTextBlock:ResetScrollState() end
---@return FMargin
function UCommonTextBlock:GetMargin() end


---@class UCommonTextScrollStyle : UObject
---@field Speed float
---@field StartDelay float
---@field EndDelay float
---@field FadeInDelay float
---@field FadeOutDelay float
UCommonTextScrollStyle = {}

---@return UCommonTextScrollStyle
function UCommonTextScrollStyle:get() end



---@class UCommonTextStyle : UObject
---@field Font FSlateFontInfo
---@field Color FLinearColor
---@field bUsesDropShadow boolean
---@field ShadowOffset FVector2D
---@field ShadowColor FLinearColor
---@field Margin FMargin
---@field StrikeBrush FSlateBrush
---@field LineHeightPercentage float
UCommonTextStyle = {}

---@return UCommonTextStyle
function UCommonTextStyle:get() end

---@param OutStrikeBrush FSlateBrush
function UCommonTextStyle:GetStrikeBrush(OutStrikeBrush) end
---@param OutShadowOffset FVector2D
function UCommonTextStyle:GetShadowOffset(OutShadowOffset) end
---@param OutColor FLinearColor
function UCommonTextStyle:GetShadowColor(OutColor) end
---@param OutMargin FMargin
function UCommonTextStyle:GetMargin(OutMargin) end
---@return float
function UCommonTextStyle:GetLineHeightPercentage() end
---@param OutFont FSlateFontInfo
function UCommonTextStyle:GetFont(OutFont) end
---@param OutColor FLinearColor
function UCommonTextStyle:GetColor(OutColor) end


---@class UCommonTileView : UTileView
UCommonTileView = {}

---@return UCommonTileView
function UCommonTileView:get() end


---@class UCommonTreeView : UTreeView
UCommonTreeView = {}

---@return UCommonTreeView
function UCommonTreeView:get() end


---@class UCommonUIActionRouterBase : ULocalPlayerSubsystem
UCommonUIActionRouterBase = {}

---@return UCommonUIActionRouterBase
function UCommonUIActionRouterBase:get() end


---@class UCommonUIEditorSettings : UObject
---@field TemplateTextStyle TSoftClassPtr<UCommonTextStyle>
---@field TemplateButtonStyle TSoftClassPtr<UCommonButtonStyle>
---@field TemplateBorderStyle TSoftClassPtr<UCommonBorderStyle>
UCommonUIEditorSettings = {}

---@return UCommonUIEditorSettings
function UCommonUIEditorSettings:get() end



---@class UCommonUIInputSettings : UObject
---@field bLinkCursorToGamepadFocus boolean
---@field UIActionProcessingPriority int32
---@field InputActions TArray<FUIInputAction>
---@field ActionOverrides TArray<FUIInputAction>
---@field AnalogCursorSettings FCommonAnalogCursorSettings
UCommonUIInputSettings = {}

---@return UCommonUIInputSettings
function UCommonUIInputSettings:get() end



---@class UCommonUILibrary : UBlueprintFunctionLibrary
UCommonUILibrary = {}

---@return UCommonUILibrary
function UCommonUILibrary:get() end

---@param StartingWidget UWidget
---@param Type TSubclassOf<UWidget>
---@return UWidget
function UCommonUILibrary:FindParentWidgetOfType(StartingWidget, Type) end


---@class UCommonUIRichTextData : UObject
---@field InlineIconSet UDataTable
UCommonUIRichTextData = {}

---@return UCommonUIRichTextData
function UCommonUIRichTextData:get() end



---@class UCommonUISettings : UObject
---@field bAutoLoadData boolean
---@field DefaultImageResourceObject TSoftObjectPtr<UObject>
---@field DefaultThrobberMaterial TSoftObjectPtr<UMaterialInterface>
---@field DefaultRichTextDataClass TSoftClassPtr<UCommonUIRichTextData>
---@field PlatformTraits TArray<FGameplayTag>
---@field DefaultImageResourceObjectInstance UObject
---@field DefaultThrobberMaterialInstance UMaterialInterface
---@field DefaultThrobberBrush FSlateBrush
---@field RichTextDataInstance UCommonUIRichTextData
UCommonUISettings = {}

---@return UCommonUISettings
function UCommonUISettings:get() end



---@class UCommonUISubsystemBase : UGameInstanceSubsystem
UCommonUISubsystemBase = {}

---@return UCommonUISubsystemBase
function UCommonUISubsystemBase:get() end

---@param InputActionRowHandle FDataTableRowHandle
---@param InputType ECommonInputType
---@param GamepadName FName
---@return FSlateBrush
function UCommonUISubsystemBase:GetInputActionButtonIcon(InputActionRowHandle, InputType, GamepadName) end


---@class UCommonUIVisibilitySubsystem : ULocalPlayerSubsystem
UCommonUIVisibilitySubsystem = {}

---@return UCommonUIVisibilitySubsystem
function UCommonUIVisibilitySubsystem:get() end


---@class UCommonUserWidget : UUserWidget
---@field bDisplayInActionBar boolean
---@field bConsumePointerInput boolean
UCommonUserWidget = {}

---@return UCommonUserWidget
function UCommonUserWidget:get() end

---@param bInConsumePointerInput boolean
function UCommonUserWidget:SetConsumePointerInput(bInConsumePointerInput) end


---@class UCommonVideoPlayer : UWidget
---@field Video UMediaSource
---@field MediaPlayer UMediaPlayer
---@field MediaTexture UMediaTexture
---@field VideoMaterial UMaterial
---@field SoundComponent UMediaSoundComponent
---@field VideoBrush FSlateBrush
UCommonVideoPlayer = {}

---@return UCommonVideoPlayer
function UCommonVideoPlayer:get() end



---@class UCommonVisibilitySwitcher : UOverlay
---@field ShownVisibility ESlateVisibility
---@field ActiveWidgetIndex int32
---@field bAutoActivateSlot boolean
---@field bActivateFirstSlotOnAdding boolean
UCommonVisibilitySwitcher = {}

---@return UCommonVisibilitySwitcher
function UCommonVisibilitySwitcher:get() end

---@param Index int32
function UCommonVisibilitySwitcher:SetActiveWidgetIndex(Index) end
---@param Widget UWidget
function UCommonVisibilitySwitcher:SetActiveWidget(Widget) end
---@param bAllowWrapping boolean
function UCommonVisibilitySwitcher:IncrementActiveWidgetIndex(bAllowWrapping) end
---@return int32
function UCommonVisibilitySwitcher:GetActiveWidgetIndex() end
---@return UWidget
function UCommonVisibilitySwitcher:GetActiveWidget() end
---@param bAllowWrapping boolean
function UCommonVisibilitySwitcher:DecrementActiveWidgetIndex(bAllowWrapping) end
function UCommonVisibilitySwitcher:DeactivateVisibleSlot() end
function UCommonVisibilitySwitcher:ActivateVisibleSlot() end


---@class UCommonVisibilitySwitcherSlot : UOverlaySlot
UCommonVisibilitySwitcherSlot = {}

---@return UCommonVisibilitySwitcherSlot
function UCommonVisibilitySwitcherSlot:get() end


---@class UCommonVisualAttachment : USizeBox
---@field ContentAnchor FVector2D
UCommonVisualAttachment = {}

---@return UCommonVisualAttachment
function UCommonVisualAttachment:get() end



---@class UCommonWidgetCarousel : UPanelWidget
---@field ActiveWidgetIndex int32
---@field OnCurrentPageIndexChanged FCommonWidgetCarouselOnCurrentPageIndexChanged
UCommonWidgetCarousel = {}

---@return UCommonWidgetCarousel
function UCommonWidgetCarousel:get() end

---@param Index int32
function UCommonWidgetCarousel:SetActiveWidgetIndex(Index) end
---@param Widget UWidget
function UCommonWidgetCarousel:SetActiveWidget(Widget) end
function UCommonWidgetCarousel:PreviousPage() end
function UCommonWidgetCarousel:NextPage() end
---@param Index int32
---@return UWidget
function UCommonWidgetCarousel:GetWidgetAtIndex(Index) end
---@return int32
function UCommonWidgetCarousel:GetActiveWidgetIndex() end
function UCommonWidgetCarousel:EndAutoScrolling() end
---@param ScrollInterval float
function UCommonWidgetCarousel:BeginAutoScrolling(ScrollInterval) end


---@class UCommonWidgetCarouselNavBar : UWidget
---@field ButtonWidgetType TSubclassOf<UCommonButtonBase>
---@field ButtonPadding FMargin
---@field LinkedCarousel UCommonWidgetCarousel
---@field ButtonGroup UCommonButtonGroupBase
---@field Buttons TArray<UCommonButtonBase>
UCommonWidgetCarouselNavBar = {}

---@return UCommonWidgetCarouselNavBar
function UCommonWidgetCarouselNavBar:get() end

---@param CommonCarousel UCommonWidgetCarousel
function UCommonWidgetCarouselNavBar:SetLinkedCarousel(CommonCarousel) end
---@param CommonCarousel UCommonWidgetCarousel
---@param pageIndex int32
function UCommonWidgetCarouselNavBar:HandlePageChanged(CommonCarousel, pageIndex) end
---@param AssociatedButton UCommonButtonBase
---@param ButtonIndex int32
function UCommonWidgetCarouselNavBar:HandleButtonClicked(AssociatedButton, ButtonIndex) end


---@class UCommonWidgetGroupBase : UObject
UCommonWidgetGroupBase = {}

---@return UCommonWidgetGroupBase
function UCommonWidgetGroupBase:get() end

---@param InWidget UWidget
function UCommonWidgetGroupBase:RemoveWidget(InWidget) end
function UCommonWidgetGroupBase:RemoveAll() end
---@param InWidget UWidget
function UCommonWidgetGroupBase:AddWidget(InWidget) end


---@class UDEPRECATED_UCommonVisibilityWidgetBase : UCommonBorder
---@field VisibilityControls TMap<FName, boolean>
---@field bShowForGamepad boolean
---@field bShowForMouseAndKeyboard boolean
---@field bShowForTouch boolean
---@field VisibleType ESlateVisibility
---@field HiddenType ESlateVisibility
UDEPRECATED_UCommonVisibilityWidgetBase = {}

---@return UDEPRECATED_UCommonVisibilityWidgetBase
function UDEPRECATED_UCommonVisibilityWidgetBase:get() end

---@return TArray<FName>
function UDEPRECATED_UCommonVisibilityWidgetBase:GetRegisteredPlatforms() end


---@class ULoadGuardSlot : UPanelSlot
---@field Padding FMargin
---@field HorizontalAlignment EHorizontalAlignment
---@field VerticalAlignment EVerticalAlignment
ULoadGuardSlot = {}

---@return ULoadGuardSlot
function ULoadGuardSlot:get() end

---@param InVerticalAlignment EVerticalAlignment
function ULoadGuardSlot:SetVerticalAlignment(InVerticalAlignment) end
---@param InPadding FMargin
function ULoadGuardSlot:SetPadding(InPadding) end
---@param InHorizontalAlignment EHorizontalAlignment
function ULoadGuardSlot:SetHorizontalAlignment(InHorizontalAlignment) end


