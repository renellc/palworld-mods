---@meta

---@class FCommonInputKeyBrushConfiguration
---@field Key FKey
---@field KeyBrush FSlateBrush
FCommonInputKeyBrushConfiguration = {}

---@return FCommonInputKeyBrushConfiguration
function FCommonInputKeyBrushConfiguration:get() end



---@class FCommonInputKeySetBrushConfiguration
---@field Keys TArray<FKey>
---@field KeyBrush FSlateBrush
FCommonInputKeySetBrushConfiguration = {}

---@return FCommonInputKeySetBrushConfiguration
function FCommonInputKeySetBrushConfiguration:get() end



---@class FCommonInputPlatformBaseData
---@field DefaultInputType ECommonInputType
---@field bSupportsMouseAndKeyboard boolean
---@field bSupportsGamepad boolean
---@field DefaultGamepadName FName
---@field bCanChangeGamepadType boolean
---@field bSupportsTouch boolean
---@field ControllerData TArray<TSoftClassPtr<UCommonInputBaseControllerData>>
---@field ControllerDataClasses TArray<TSubclassOf<UCommonInputBaseControllerData>>
FCommonInputPlatformBaseData = {}

---@return FCommonInputPlatformBaseData
function FCommonInputPlatformBaseData:get() end



---@class FInputDeviceIdentifierPair
---@field InputDeviceName FName
---@field HardwareDeviceIdentifier FString
FInputDeviceIdentifierPair = {}

---@return FInputDeviceIdentifierPair
function FInputDeviceIdentifierPair:get() end



---@class UCommonInputActionDomain : UDataAsset
---@field Behavior ECommonInputEventFlowBehavior
---@field InnerBehavior ECommonInputEventFlowBehavior
---@field bUseActionDomainDesiredInputConfig boolean
---@field InputMode ECommonInputMode
---@field MouseCaptureMode EMouseCaptureMode
UCommonInputActionDomain = {}

---@return UCommonInputActionDomain
function UCommonInputActionDomain:get() end



---@class UCommonInputActionDomainTable : UDataAsset
---@field ActionDomains TArray<UCommonInputActionDomain>
---@field InputMode ECommonInputMode
---@field MouseCaptureMode EMouseCaptureMode
UCommonInputActionDomainTable = {}

---@return UCommonInputActionDomainTable
function UCommonInputActionDomainTable:get() end



---@class UCommonInputBaseControllerData : UObject
---@field InputType ECommonInputType
---@field GamepadName FName
---@field GamepadDisplayName FText
---@field GamepadCategory FText
---@field GamepadPlatformName FText
---@field GamepadHardwareIdMapping TArray<FInputDeviceIdentifierPair>
---@field ControllerTexture TSoftObjectPtr<UTexture2D>
---@field ControllerButtonMaskTexture TSoftObjectPtr<UTexture2D>
---@field InputBrushDataMap TArray<FCommonInputKeyBrushConfiguration>
---@field InputBrushKeySets TArray<FCommonInputKeySetBrushConfiguration>
UCommonInputBaseControllerData = {}

---@return UCommonInputBaseControllerData
function UCommonInputBaseControllerData:get() end

---@return TArray<FName>
function UCommonInputBaseControllerData:GetRegisteredGamepads() end


---@class UCommonInputPlatformSettings : UPlatformSettings
---@field DefaultInputType ECommonInputType
---@field bSupportsMouseAndKeyboard boolean
---@field bSupportsTouch boolean
---@field bSupportsGamepad boolean
---@field DefaultGamepadName FName
---@field bCanChangeGamepadType boolean
---@field ControllerData TArray<TSoftClassPtr<UCommonInputBaseControllerData>>
---@field ControllerDataClasses TArray<TSubclassOf<UCommonInputBaseControllerData>>
UCommonInputPlatformSettings = {}

---@return UCommonInputPlatformSettings
function UCommonInputPlatformSettings:get() end



---@class UCommonInputSettings : UDeveloperSettings
---@field InputData TSoftClassPtr<UCommonUIInputData>
---@field PlatformInput FPerPlatformSettings
---@field CommonInputPlatformData TMap<FName, FCommonInputPlatformBaseData>
---@field bEnableInputMethodThrashingProtection boolean
---@field InputMethodThrashingLimit int32
---@field InputMethodThrashingWindowInSeconds double
---@field InputMethodThrashingCooldownInSeconds double
---@field bAllowOutOfFocusDeviceInput boolean
---@field bEnableDefaultInputConfig boolean
---@field ActionDomainTable TSoftObjectPtr<UCommonInputActionDomainTable>
---@field InputDataClass TSubclassOf<UCommonUIInputData>
---@field ActionDomainTablePtr UCommonInputActionDomainTable
UCommonInputSettings = {}

---@return UCommonInputSettings
function UCommonInputSettings:get() end



---@class UCommonInputSubsystem : ULocalPlayerSubsystem
---@field OnInputMethodChanged FCommonInputSubsystemOnInputMethodChanged
---@field NumberOfInputMethodChangesRecently int32
---@field LastInputMethodChangeTime double
---@field LastTimeInputMethodThrashingBegan double
---@field LastInputType ECommonInputType
---@field CurrentInputType ECommonInputType
---@field GamepadInputType FName
---@field CurrentInputLocks TMap<FName, ECommonInputType>
---@field ActionDomainTable UCommonInputActionDomainTable
---@field bIsGamepadSimulatedClick boolean
UCommonInputSubsystem = {}

---@return UCommonInputSubsystem
function UCommonInputSubsystem:get() end

---@return boolean
function UCommonInputSubsystem:ShouldShowInputKeys() end
---@param InGamepadInputType FName
function UCommonInputSubsystem:SetGamepadInputType(InGamepadInputType) end
---@param NewInputType ECommonInputType
function UCommonInputSubsystem:SetCurrentInputType(NewInputType) end
---@return boolean
function UCommonInputSubsystem:IsUsingPointerInput() end
---@param InputMethod ECommonInputType
---@return boolean
function UCommonInputSubsystem:IsInputMethodActive(InputMethod) end
---@return ECommonInputType
function UCommonInputSubsystem:GetDefaultInputType() end
---@return ECommonInputType
function UCommonInputSubsystem:GetCurrentInputType() end
---@return FName
function UCommonInputSubsystem:GetCurrentGamepadName() end


---@class UCommonUIInputData : UObject
---@field DefaultClickAction FDataTableRowHandle
---@field DefaultBackAction FDataTableRowHandle
UCommonUIInputData = {}

---@return UCommonUIInputData
function UCommonUIInputData:get() end



