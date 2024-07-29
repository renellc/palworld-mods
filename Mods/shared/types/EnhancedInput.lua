---@meta

---@class FBlueprintEnhancedInputActionBinding
---@field InputAction UInputAction
---@field TriggerEvent ETriggerEvent
---@field FunctionNameToBind FName
FBlueprintEnhancedInputActionBinding = {}

---@return FBlueprintEnhancedInputActionBinding
function FBlueprintEnhancedInputActionBinding:get() end



---@class FBlueprintInputDebugKeyDelegateBinding
---@field InputChord FInputChord
---@field InputKeyEvent EInputEvent
---@field FunctionNameToBind FName
---@field bExecuteWhenPaused boolean
FBlueprintInputDebugKeyDelegateBinding = {}

---@return FBlueprintInputDebugKeyDelegateBinding
function FBlueprintInputDebugKeyDelegateBinding:get() end



---@class FEnhancedActionKeyMapping
---@field PlayerMappableOptions FPlayerMappableKeyOptions
---@field Triggers TArray<UInputTrigger>
---@field Modifiers TArray<UInputModifier>
---@field action UInputAction
---@field Key FKey
---@field bIsPlayerMappable boolean
---@field bShouldBeIgnored boolean
FEnhancedActionKeyMapping = {}

---@return FEnhancedActionKeyMapping
function FEnhancedActionKeyMapping:get() end



---@class FInjectedInputArray
FInjectedInputArray = {}

---@return FInjectedInputArray
function FInjectedInputArray:get() end


---@class FInputActionInstance
---@field SourceAction UInputAction
---@field TriggerEvent ETriggerEvent
---@field LastTriggeredWorldTime float
---@field Triggers TArray<UInputTrigger>
---@field Modifiers TArray<UInputModifier>
---@field ElapsedProcessedTime float
---@field ElapsedTriggeredTime float
FInputActionInstance = {}

---@return FInputActionInstance
function FInputActionInstance:get() end



---@class FInputActionValue
FInputActionValue = {}

---@return FInputActionValue
function FInputActionValue:get() end


---@class FInputComboStepData
---@field ComboStepAction UInputAction
---@field TimeToPressKey float
FInputComboStepData = {}

---@return FInputComboStepData
function FInputComboStepData:get() end



---@class FMappingQueryIssue
---@field Issue EMappingQueryIssue
---@field BlockingContext UInputMappingContext
---@field BlockingAction UInputAction
FMappingQueryIssue = {}

---@return FMappingQueryIssue
function FMappingQueryIssue:get() end



---@class FModifyContextOptions
---@field bIgnoreAllPressedKeysUntilRelease boolean
---@field bForceImmediately boolean
FModifyContextOptions = {}

---@return FModifyContextOptions
function FModifyContextOptions:get() end



---@class FPlayerMappableKeyOptions
---@field MetaData UObject
---@field Name FName
---@field DisplayName FText
---@field DisplayCategory FText
FPlayerMappableKeyOptions = {}

---@return FPlayerMappableKeyOptions
function FPlayerMappableKeyOptions:get() end



---@class IEnhancedInputSubsystemInterface : IInterface
IEnhancedInputSubsystemInterface = {}

---@return IEnhancedInputSubsystemInterface
function IEnhancedInputSubsystemInterface:get() end

---@param Options FModifyContextOptions
---@param RebuildType EInputMappingRebuildType
function IEnhancedInputSubsystemInterface:RequestRebuildControlMappings(Options, RebuildType) end
---@param MappingName FName
---@param Options FModifyContextOptions
---@return int32
function IEnhancedInputSubsystemInterface:RemovePlayerMappedKey(MappingName, Options) end
---@param Config UPlayerMappableInputConfig
---@param Options FModifyContextOptions
function IEnhancedInputSubsystemInterface:RemovePlayerMappableConfig(Config, Options) end
---@param MappingContext UInputMappingContext
---@param Options FModifyContextOptions
function IEnhancedInputSubsystemInterface:RemoveMappingContext(MappingContext, Options) end
---@param Options FModifyContextOptions
function IEnhancedInputSubsystemInterface:RemoveAllPlayerMappedKeys(Options) end
---@param PrioritizedActiveContexts TArray<UInputMappingContext>
---@param InputContext UInputMappingContext
---@param action UInputAction
---@param Key FKey
---@param OutIssues TArray<FMappingQueryIssue>
---@param BlockingIssues EMappingQueryIssue
---@return EMappingQueryResult
function IEnhancedInputSubsystemInterface:QueryMapKeyInContextSet(PrioritizedActiveContexts, InputContext, action, Key, OutIssues, BlockingIssues) end
---@param InputContext UInputMappingContext
---@param action UInputAction
---@param Key FKey
---@param OutIssues TArray<FMappingQueryIssue>
---@param BlockingIssues EMappingQueryIssue
---@return EMappingQueryResult
function IEnhancedInputSubsystemInterface:QueryMapKeyInActiveContextSet(InputContext, action, Key, OutIssues, BlockingIssues) end
---@param action UInputAction
---@return TArray<FKey>
function IEnhancedInputSubsystemInterface:QueryKeysMappedToAction(action) end
---@param action UInputAction
---@param Value FVector
---@param Modifiers TArray<UInputModifier>
---@param Triggers TArray<UInputTrigger>
function IEnhancedInputSubsystemInterface:InjectInputVectorForAction(action, Value, Modifiers, Triggers) end
---@param action UInputAction
---@param RawValue FInputActionValue
---@param Modifiers TArray<UInputModifier>
---@param Triggers TArray<UInputTrigger>
function IEnhancedInputSubsystemInterface:InjectInputForAction(action, RawValue, Modifiers, Triggers) end
---@param MappingContext UInputMappingContext
---@param OutFoundPriority int32
---@return boolean
function IEnhancedInputSubsystemInterface:HasMappingContext(MappingContext, OutFoundPriority) end
---@param MappingName FName
---@return FKey
function IEnhancedInputSubsystemInterface:GetPlayerMappedKey(MappingName) end
---@return TArray<FEnhancedActionKeyMapping>
function IEnhancedInputSubsystemInterface:GetAllPlayerMappableActionKeyMappings() end
function IEnhancedInputSubsystemInterface:ClearAllMappings() end
---@param MappingName FName
---@param NewKey FKey
---@param Options FModifyContextOptions
---@return int32
function IEnhancedInputSubsystemInterface:AddPlayerMappedKey(MappingName, NewKey, Options) end
---@param Config UPlayerMappableInputConfig
---@param Options FModifyContextOptions
function IEnhancedInputSubsystemInterface:AddPlayerMappableConfig(Config, Options) end
---@param MappingContext UInputMappingContext
---@param Priority int32
---@param Options FModifyContextOptions
function IEnhancedInputSubsystemInterface:AddMappingContext(MappingContext, Priority, Options) end


---@class UEnhancedInputActionDelegateBinding : UInputDelegateBinding
---@field InputActionDelegateBindings TArray<FBlueprintEnhancedInputActionBinding>
UEnhancedInputActionDelegateBinding = {}

---@return UEnhancedInputActionDelegateBinding
function UEnhancedInputActionDelegateBinding:get() end



---@class UEnhancedInputActionValueBinding : UInputDelegateBinding
---@field InputActionValueBindings TArray<FBlueprintEnhancedInputActionBinding>
UEnhancedInputActionValueBinding = {}

---@return UEnhancedInputActionValueBinding
function UEnhancedInputActionValueBinding:get() end



---@class UEnhancedInputComponent : UInputComponent
UEnhancedInputComponent = {}

---@return UEnhancedInputComponent
function UEnhancedInputComponent:get() end

---@param action UInputAction
---@return FInputActionValue
function UEnhancedInputComponent:GetBoundActionValue(action) end


---@class UEnhancedInputDeveloperSettings : UDeveloperSettingsBackedByCVars
---@field PlatformSettings FPerPlatformSettings
---@field bShouldOnlyTriggerLastActionInChord boolean
UEnhancedInputDeveloperSettings = {}

---@return UEnhancedInputDeveloperSettings
function UEnhancedInputDeveloperSettings:get() end



---@class UEnhancedInputLibrary : UBlueprintFunctionLibrary
UEnhancedInputLibrary = {}

---@return UEnhancedInputLibrary
function UEnhancedInputLibrary:get() end

---@param Context UInputMappingContext
---@param bForceImmediately boolean
function UEnhancedInputLibrary:RequestRebuildControlMappingsUsingContext(Context, bForceImmediately) end
---@param X double
---@param Y double
---@param Z double
---@param ValueType EInputActionValueType
---@return FInputActionValue
function UEnhancedInputLibrary:MakeInputActionValueOfType(X, Y, Z, ValueType) end
---@param X double
---@param Y double
---@param Z double
---@param MatchValueType FInputActionValue
---@return FInputActionValue
function UEnhancedInputLibrary:MakeInputActionValue(X, Y, Z, MatchValueType) end
---@param Actor AActor
---@param action UInputAction
---@return FInputActionValue
function UEnhancedInputLibrary:GetBoundActionValue(Actor, action) end
---@param ActionValue FInputActionValue
---@return FString
function UEnhancedInputLibrary:Conv_InputActionValueToString(ActionValue) end
---@param InValue FInputActionValue
---@return boolean
function UEnhancedInputLibrary:Conv_InputActionValueToBool(InValue) end
---@param ActionValue FInputActionValue
---@return FVector
function UEnhancedInputLibrary:Conv_InputActionValueToAxis3D(ActionValue) end
---@param InValue FInputActionValue
---@return FVector2D
function UEnhancedInputLibrary:Conv_InputActionValueToAxis2D(InValue) end
---@param InValue FInputActionValue
---@return double
function UEnhancedInputLibrary:Conv_InputActionValueToAxis1D(InValue) end
---@param InActionValue FInputActionValue
---@param X double
---@param Y double
---@param Z double
---@param Type EInputActionValueType
function UEnhancedInputLibrary:BreakInputActionValue(InActionValue, X, Y, Z, Type) end


---@class UEnhancedInputLocalPlayerSubsystem : ULocalPlayerSubsystem
---@field ControlMappingsRebuiltDelegate FEnhancedInputLocalPlayerSubsystemControlMappingsRebuiltDelegate
UEnhancedInputLocalPlayerSubsystem = {}

---@return UEnhancedInputLocalPlayerSubsystem
function UEnhancedInputLocalPlayerSubsystem:get() end



---@class UEnhancedInputPlatformData : UObject
---@field MappingContextRedirects TMap<UInputMappingContext, UInputMappingContext>
UEnhancedInputPlatformData = {}

---@return UEnhancedInputPlatformData
function UEnhancedInputPlatformData:get() end

---@param InContext UInputMappingContext
---@return UInputMappingContext
function UEnhancedInputPlatformData:GetContextRedirect(InContext) end


---@class UEnhancedInputPlatformSettings : UPlatformSettings
---@field InputData TArray<TSoftClassPtr<UEnhancedInputPlatformData>>
---@field InputDataClasses TArray<TSubclassOf<UEnhancedInputPlatformData>>
---@field bShouldLogMappingContextRedirects boolean
UEnhancedInputPlatformSettings = {}

---@return UEnhancedInputPlatformSettings
function UEnhancedInputPlatformSettings:get() end



---@class UEnhancedPlayerInput : UPlayerInput
---@field AppliedInputContexts TMap<UInputMappingContext, int32>
---@field EnhancedActionMappings TArray<FEnhancedActionKeyMapping>
---@field ActionInstanceData TMap<UInputAction, FInputActionInstance>
---@field KeysPressedThisTick TMap<FKey, FVector>
---@field InputsInjectedThisTick TMap<UInputAction, FInjectedInputArray>
---@field LastInjectedActions TSet<UInputAction>
UEnhancedPlayerInput = {}

---@return UEnhancedPlayerInput
function UEnhancedPlayerInput:get() end



---@class UInputAction : UDataAsset
---@field ActionDescription FText
---@field bConsumeInput boolean
---@field bTriggerWhenPaused boolean
---@field bReserveAllMappings boolean
---@field ValueType EInputActionValueType
---@field Triggers TArray<UInputTrigger>
---@field Modifiers TArray<UInputModifier>
UInputAction = {}

---@return UInputAction
function UInputAction:get() end



---@class UInputDebugKeyDelegateBinding : UInputDelegateBinding
---@field InputDebugKeyDelegateBindings TArray<FBlueprintInputDebugKeyDelegateBinding>
UInputDebugKeyDelegateBinding = {}

---@return UInputDebugKeyDelegateBinding
function UInputDebugKeyDelegateBinding:get() end



---@class UInputMappingContext : UDataAsset
---@field Mappings TArray<FEnhancedActionKeyMapping>
---@field ContextDescription FText
UInputMappingContext = {}

---@return UInputMappingContext
function UInputMappingContext:get() end

---@param action UInputAction
---@param Key FKey
function UInputMappingContext:UnmapKey(action, Key) end
---@param action UInputAction
function UInputMappingContext:UnmapAllKeysFromAction(action) end
function UInputMappingContext:UnmapAll() end
---@param action UInputAction
function UInputMappingContext:UnmapAction(action) end
---@param action UInputAction
---@param ToKey FKey
---@return FEnhancedActionKeyMapping
function UInputMappingContext:MapKey(action, ToKey) end


---@class UInputModifier : UObject
UInputModifier = {}

---@return UInputModifier
function UInputModifier:get() end

---@param PlayerInput UEnhancedPlayerInput
---@param CurrentValue FInputActionValue
---@param DeltaTime float
---@return FInputActionValue
function UInputModifier:ModifyRaw(PlayerInput, CurrentValue, DeltaTime) end
---@param SampleValue FInputActionValue
---@param FinalValue FInputActionValue
---@return FLinearColor
function UInputModifier:GetVisualizationColor(SampleValue, FinalValue) end


---@class UInputModifierDeadZone : UInputModifier
---@field LowerThreshold float
---@field UpperThreshold float
---@field Type EDeadZoneType
UInputModifierDeadZone = {}

---@return UInputModifierDeadZone
function UInputModifierDeadZone:get() end



---@class UInputModifierFOVScaling : UInputModifier
---@field FOVScale float
---@field FOVScalingType EFOVScalingType
UInputModifierFOVScaling = {}

---@return UInputModifierFOVScaling
function UInputModifierFOVScaling:get() end



---@class UInputModifierNegate : UInputModifier
---@field bX boolean
---@field bY boolean
---@field bZ boolean
UInputModifierNegate = {}

---@return UInputModifierNegate
function UInputModifierNegate:get() end



---@class UInputModifierResponseCurveExponential : UInputModifier
---@field CurveExponent FVector
UInputModifierResponseCurveExponential = {}

---@return UInputModifierResponseCurveExponential
function UInputModifierResponseCurveExponential:get() end



---@class UInputModifierResponseCurveUser : UInputModifier
---@field ResponseX UCurveFloat
---@field ResponseY UCurveFloat
---@field ResponseZ UCurveFloat
UInputModifierResponseCurveUser = {}

---@return UInputModifierResponseCurveUser
function UInputModifierResponseCurveUser:get() end



---@class UInputModifierScalar : UInputModifier
---@field Scalar FVector
UInputModifierScalar = {}

---@return UInputModifierScalar
function UInputModifierScalar:get() end



---@class UInputModifierScaleByDeltaTime : UInputModifier
UInputModifierScaleByDeltaTime = {}

---@return UInputModifierScaleByDeltaTime
function UInputModifierScaleByDeltaTime:get() end


---@class UInputModifierSmooth : UInputModifier
UInputModifierSmooth = {}

---@return UInputModifierSmooth
function UInputModifierSmooth:get() end


---@class UInputModifierSwizzleAxis : UInputModifier
---@field Order EInputAxisSwizzle
UInputModifierSwizzleAxis = {}

---@return UInputModifierSwizzleAxis
function UInputModifierSwizzleAxis:get() end



---@class UInputModifierToWorldSpace : UInputModifier
UInputModifierToWorldSpace = {}

---@return UInputModifierToWorldSpace
function UInputModifierToWorldSpace:get() end


---@class UInputTrigger : UObject
---@field ActuationThreshold float
---@field bShouldAlwaysTick boolean
---@field LastValue FInputActionValue
UInputTrigger = {}

---@return UInputTrigger
function UInputTrigger:get() end

---@param PlayerInput UEnhancedPlayerInput
---@param ModifiedValue FInputActionValue
---@param DeltaTime float
---@return ETriggerState
function UInputTrigger:UpdateState(PlayerInput, ModifiedValue, DeltaTime) end
---@param ForValue FInputActionValue
---@return boolean
function UInputTrigger:IsActuated(ForValue) end
---@return ETriggerType
function UInputTrigger:GetTriggerType() end


---@class UInputTriggerChordAction : UInputTrigger
---@field ChordAction UInputAction
UInputTriggerChordAction = {}

---@return UInputTriggerChordAction
function UInputTriggerChordAction:get() end



---@class UInputTriggerChordBlocker : UInputTriggerChordAction
UInputTriggerChordBlocker = {}

---@return UInputTriggerChordBlocker
function UInputTriggerChordBlocker:get() end


---@class UInputTriggerCombo : UInputTrigger
---@field CurrentComboStepIndex int32
---@field CurrentTimeBetweenComboSteps float
---@field ComboActions TArray<FInputComboStepData>
---@field CancelActions TArray<UInputAction>
UInputTriggerCombo = {}

---@return UInputTriggerCombo
function UInputTriggerCombo:get() end



---@class UInputTriggerDown : UInputTrigger
UInputTriggerDown = {}

---@return UInputTriggerDown
function UInputTriggerDown:get() end


---@class UInputTriggerHold : UInputTriggerTimedBase
---@field HoldTimeThreshold float
---@field bIsOneShot boolean
UInputTriggerHold = {}

---@return UInputTriggerHold
function UInputTriggerHold:get() end



---@class UInputTriggerHoldAndRelease : UInputTriggerTimedBase
---@field HoldTimeThreshold float
UInputTriggerHoldAndRelease = {}

---@return UInputTriggerHoldAndRelease
function UInputTriggerHoldAndRelease:get() end



---@class UInputTriggerPressed : UInputTrigger
UInputTriggerPressed = {}

---@return UInputTriggerPressed
function UInputTriggerPressed:get() end


---@class UInputTriggerPulse : UInputTriggerTimedBase
---@field bTriggerOnStart boolean
---@field Interval float
---@field TriggerLimit int32
UInputTriggerPulse = {}

---@return UInputTriggerPulse
function UInputTriggerPulse:get() end



---@class UInputTriggerReleased : UInputTrigger
UInputTriggerReleased = {}

---@return UInputTriggerReleased
function UInputTriggerReleased:get() end


---@class UInputTriggerTap : UInputTriggerTimedBase
---@field TapReleaseTimeThreshold float
UInputTriggerTap = {}

---@return UInputTriggerTap
function UInputTriggerTap:get() end



---@class UInputTriggerTimedBase : UInputTrigger
---@field HeldDuration float
---@field bAffectedByTimeDilation boolean
UInputTriggerTimedBase = {}

---@return UInputTriggerTimedBase
function UInputTriggerTimedBase:get() end



---@class UPlayerMappableInputConfig : UPrimaryDataAsset
---@field ConfigName FName
---@field ConfigDisplayName FText
---@field bIsDeprecated boolean
---@field MetaData UObject
---@field Contexts TMap<UInputMappingContext, int32>
UPlayerMappableInputConfig = {}

---@return UPlayerMappableInputConfig
function UPlayerMappableInputConfig:get() end

function UPlayerMappableInputConfig:ResetToDefault() end
---@return boolean
function UPlayerMappableInputConfig:IsDeprecated() end
---@return TArray<FEnhancedActionKeyMapping>
function UPlayerMappableInputConfig:GetPlayerMappableKeys() end
---@return UObject
function UPlayerMappableInputConfig:GetMetadata() end
---@return TMap<UInputMappingContext, int32>
function UPlayerMappableInputConfig:GetMappingContexts() end
---@param MappingName FName
---@return FEnhancedActionKeyMapping
function UPlayerMappableInputConfig:GetMappingByName(MappingName) end
---@param InAction UInputAction
---@return TArray<FEnhancedActionKeyMapping>
function UPlayerMappableInputConfig:GetKeysBoundToAction(InAction) end
---@return FText
function UPlayerMappableInputConfig:GetDisplayName() end
---@return FName
function UPlayerMappableInputConfig:GetConfigName() end


