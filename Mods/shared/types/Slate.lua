---@meta

---@class FAnchors
---@field Minimum FVector2D
---@field Maximum FVector2D
FAnchors = {}

---@return FAnchors
function FAnchors:get() end



---@class FCustomizedToolMenu
---@field Name FName
---@field Entries TMap<FName, FCustomizedToolMenuEntry>
---@field Sections TMap<FName, FCustomizedToolMenuSection>
---@field EntryOrder TMap<FName, FCustomizedToolMenuNameArray>
---@field SectionOrder TArray<FName>
FCustomizedToolMenu = {}

---@return FCustomizedToolMenu
function FCustomizedToolMenu:get() end



---@class FCustomizedToolMenuEntry
---@field Visibility ECustomizedToolMenuVisibility
FCustomizedToolMenuEntry = {}

---@return FCustomizedToolMenuEntry
function FCustomizedToolMenuEntry:get() end



---@class FCustomizedToolMenuNameArray
---@field Names TArray<FName>
FCustomizedToolMenuNameArray = {}

---@return FCustomizedToolMenuNameArray
function FCustomizedToolMenuNameArray:get() end



---@class FCustomizedToolMenuSection
---@field Visibility ECustomizedToolMenuVisibility
FCustomizedToolMenuSection = {}

---@return FCustomizedToolMenuSection
function FCustomizedToolMenuSection:get() end



---@class FInputChord
---@field Key FKey
---@field bShift boolean
---@field bCtrl boolean
---@field bAlt boolean
---@field bCmd boolean
FInputChord = {}

---@return FInputChord
function FInputChord:get() end



---@class FVirtualKeyboardOptions
---@field bEnableAutocorrect boolean
FVirtualKeyboardOptions = {}

---@return FVirtualKeyboardOptions
function FVirtualKeyboardOptions:get() end



---@class UButtonWidgetStyle : USlateWidgetStyleContainerBase
---@field ButtonStyle FButtonStyle
UButtonWidgetStyle = {}

---@return UButtonWidgetStyle
function UButtonWidgetStyle:get() end



---@class UCheckBoxWidgetStyle : USlateWidgetStyleContainerBase
---@field CheckBoxStyle FCheckBoxStyle
UCheckBoxWidgetStyle = {}

---@return UCheckBoxWidgetStyle
function UCheckBoxWidgetStyle:get() end



---@class UComboBoxWidgetStyle : USlateWidgetStyleContainerBase
---@field ComboBoxStyle FComboBoxStyle
UComboBoxWidgetStyle = {}

---@return UComboBoxWidgetStyle
function UComboBoxWidgetStyle:get() end



---@class UComboButtonWidgetStyle : USlateWidgetStyleContainerBase
---@field ComboButtonStyle FComboButtonStyle
UComboButtonWidgetStyle = {}

---@return UComboButtonWidgetStyle
function UComboButtonWidgetStyle:get() end



---@class UEditableTextBoxWidgetStyle : USlateWidgetStyleContainerBase
---@field EditableTextBoxStyle FEditableTextBoxStyle
UEditableTextBoxWidgetStyle = {}

---@return UEditableTextBoxWidgetStyle
function UEditableTextBoxWidgetStyle:get() end



---@class UEditableTextWidgetStyle : USlateWidgetStyleContainerBase
---@field EditableTextStyle FEditableTextStyle
UEditableTextWidgetStyle = {}

---@return UEditableTextWidgetStyle
function UEditableTextWidgetStyle:get() end



---@class UProgressWidgetStyle : USlateWidgetStyleContainerBase
---@field ProgressBarStyle FProgressBarStyle
UProgressWidgetStyle = {}

---@return UProgressWidgetStyle
function UProgressWidgetStyle:get() end



---@class UScrollBarWidgetStyle : USlateWidgetStyleContainerBase
---@field ScrollBarStyle FScrollBarStyle
UScrollBarWidgetStyle = {}

---@return UScrollBarWidgetStyle
function UScrollBarWidgetStyle:get() end



---@class UScrollBoxWidgetStyle : USlateWidgetStyleContainerBase
---@field ScrollBoxStyle FScrollBoxStyle
UScrollBoxWidgetStyle = {}

---@return UScrollBoxWidgetStyle
function UScrollBoxWidgetStyle:get() end



---@class USlateSettings : UObject
---@field bExplicitCanvasChildZOrder boolean
USlateSettings = {}

---@return USlateSettings
function USlateSettings:get() end



---@class USpinBoxWidgetStyle : USlateWidgetStyleContainerBase
---@field SpinBoxStyle FSpinBoxStyle
USpinBoxWidgetStyle = {}

---@return USpinBoxWidgetStyle
function USpinBoxWidgetStyle:get() end



---@class UTextBlockWidgetStyle : USlateWidgetStyleContainerBase
---@field TextBlockStyle FTextBlockStyle
UTextBlockWidgetStyle = {}

---@return UTextBlockWidgetStyle
function UTextBlockWidgetStyle:get() end



---@class UToolMenuBase : UObject
UToolMenuBase = {}

---@return UToolMenuBase
function UToolMenuBase:get() end


