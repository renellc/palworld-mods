---@meta

---@class FAnalogInputEvent : FKeyEvent
FAnalogInputEvent = {}

---@return FAnalogInputEvent
function FAnalogInputEvent:get() end


---@class FButtonStyle : FSlateWidgetStyle
---@field Normal FSlateBrush
---@field Hovered FSlateBrush
---@field Pressed FSlateBrush
---@field Disabled FSlateBrush
---@field NormalForeground FSlateColor
---@field HoveredForeground FSlateColor
---@field PressedForeground FSlateColor
---@field DisabledForeground FSlateColor
---@field NormalPadding FMargin
---@field PressedPadding FMargin
---@field PressedSlateSound FSlateSound
---@field HoveredSlateSound FSlateSound
FButtonStyle = {}

---@return FButtonStyle
function FButtonStyle:get() end



---@class FCaptureLostEvent
FCaptureLostEvent = {}

---@return FCaptureLostEvent
function FCaptureLostEvent:get() end


---@class FCharacterEvent : FInputEvent
FCharacterEvent = {}

---@return FCharacterEvent
function FCharacterEvent:get() end


---@class FCheckBoxStyle : FSlateWidgetStyle
---@field CheckBoxType ESlateCheckBoxType::Type
---@field UncheckedImage FSlateBrush
---@field UncheckedHoveredImage FSlateBrush
---@field UncheckedPressedImage FSlateBrush
---@field CheckedImage FSlateBrush
---@field CheckedHoveredImage FSlateBrush
---@field CheckedPressedImage FSlateBrush
---@field UndeterminedImage FSlateBrush
---@field UndeterminedHoveredImage FSlateBrush
---@field UndeterminedPressedImage FSlateBrush
---@field Padding FMargin
---@field BackgroundImage FSlateBrush
---@field BackgroundHoveredImage FSlateBrush
---@field BackgroundPressedImage FSlateBrush
---@field ForegroundColor FSlateColor
---@field HoveredForeground FSlateColor
---@field PressedForeground FSlateColor
---@field CheckedForeground FSlateColor
---@field CheckedHoveredForeground FSlateColor
---@field CheckedPressedForeground FSlateColor
---@field UndeterminedForeground FSlateColor
---@field BorderBackgroundColor FSlateColor
---@field CheckedSlateSound FSlateSound
---@field UncheckedSlateSound FSlateSound
---@field HoveredSlateSound FSlateSound
FCheckBoxStyle = {}

---@return FCheckBoxStyle
function FCheckBoxStyle:get() end



---@class FComboBoxStyle : FSlateWidgetStyle
---@field ComboButtonStyle FComboButtonStyle
---@field PressedSlateSound FSlateSound
---@field SelectionChangeSlateSound FSlateSound
---@field ContentPadding FMargin
---@field MenuRowPadding FMargin
FComboBoxStyle = {}

---@return FComboBoxStyle
function FComboBoxStyle:get() end



---@class FComboButtonStyle : FSlateWidgetStyle
---@field ButtonStyle FButtonStyle
---@field DownArrowImage FSlateBrush
---@field ShadowOffset FVector2D
---@field ShadowColorAndOpacity FLinearColor
---@field MenuBorderBrush FSlateBrush
---@field MenuBorderPadding FMargin
---@field ContentPadding FMargin
---@field DownArrowPadding FMargin
---@field DownArrowAlign EVerticalAlignment
FComboButtonStyle = {}

---@return FComboButtonStyle
function FComboButtonStyle:get() end



---@class FCompositeFallbackFont
---@field Typeface FTypeface
---@field ScalingFactor float
FCompositeFallbackFont = {}

---@return FCompositeFallbackFont
function FCompositeFallbackFont:get() end



---@class FCompositeFont
---@field DefaultTypeface FTypeface
---@field FallbackTypeface FCompositeFallbackFont
---@field SubTypefaces TArray<FCompositeSubFont>
FCompositeFont = {}

---@return FCompositeFont
function FCompositeFont:get() end



---@class FCompositeSubFont : FCompositeFallbackFont
---@field CharacterRanges TArray<FInt32Range>
---@field Cultures FString
FCompositeSubFont = {}

---@return FCompositeSubFont
function FCompositeSubFont:get() end



---@class FDockTabStyle : FSlateWidgetStyle
---@field CloseButtonStyle FButtonStyle
---@field NormalBrush FSlateBrush
---@field ColorOverlayTabBrush FSlateBrush
---@field ColorOverlayIconBrush FSlateBrush
---@field ForegroundBrush FSlateBrush
---@field HoveredBrush FSlateBrush
---@field ContentAreaBrush FSlateBrush
---@field TabWellBrush FSlateBrush
---@field TabTextStyle FTextBlockStyle
---@field TabPadding FMargin
---@field IconSize FVector2D
---@field OverlapWidth float
---@field FlashColor FSlateColor
---@field NormalForegroundColor FSlateColor
---@field HoveredForegroundColor FSlateColor
---@field ActiveForegroundColor FSlateColor
---@field ForegroundForegroundColor FSlateColor
---@field IconBorderPadding float
FDockTabStyle = {}

---@return FDockTabStyle
function FDockTabStyle:get() end



---@class FEditableTextBoxStyle : FSlateWidgetStyle
---@field BackgroundImageNormal FSlateBrush
---@field BackgroundImageHovered FSlateBrush
---@field BackgroundImageFocused FSlateBrush
---@field BackgroundImageReadOnly FSlateBrush
---@field Padding FMargin
---@field TextStyle FTextBlockStyle
---@field ForegroundColor FSlateColor
---@field BackgroundColor FSlateColor
---@field ReadOnlyForegroundColor FSlateColor
---@field FocusedForegroundColor FSlateColor
---@field HScrollBarPadding FMargin
---@field VScrollBarPadding FMargin
---@field ScrollBarStyle FScrollBarStyle
FEditableTextBoxStyle = {}

---@return FEditableTextBoxStyle
function FEditableTextBoxStyle:get() end



---@class FEditableTextStyle : FSlateWidgetStyle
---@field Font FSlateFontInfo
---@field ColorAndOpacity FSlateColor
---@field BackgroundImageSelected FSlateBrush
---@field BackgroundImageComposing FSlateBrush
---@field CaretImage FSlateBrush
FEditableTextStyle = {}

---@return FEditableTextStyle
function FEditableTextStyle:get() end



---@class FExpandableAreaStyle : FSlateWidgetStyle
---@field CollapsedImage FSlateBrush
---@field ExpandedImage FSlateBrush
---@field RolloutAnimationSeconds float
FExpandableAreaStyle = {}

---@return FExpandableAreaStyle
function FExpandableAreaStyle:get() end



---@class FFocusEvent
FFocusEvent = {}

---@return FFocusEvent
function FFocusEvent:get() end


---@class FFontData
---@field FontFilename FString
---@field Hinting EFontHinting
---@field LoadingPolicy EFontLoadingPolicy
---@field SubFaceIndex int32
---@field FontFaceAsset UObject
FFontData = {}

---@return FFontData
function FFontData:get() end



---@class FFontOutlineSettings
---@field OutlineSize int32
---@field OutlineBlur int32
---@field bSeparateFillAlpha boolean
---@field bApplyOutlineToDropShadows boolean
---@field OutlineMaterial UObject
---@field OutlineColor FLinearColor
FFontOutlineSettings = {}

---@return FFontOutlineSettings
function FFontOutlineSettings:get() end



---@class FGeometry
FGeometry = {}

---@return FGeometry
function FGeometry:get() end


---@class FHeaderRowStyle : FSlateWidgetStyle
---@field ColumnStyle FTableColumnHeaderStyle
---@field LastColumnStyle FTableColumnHeaderStyle
---@field ColumnSplitterStyle FSplitterStyle
---@field SplitterHandleSize float
---@field BackgroundBrush FSlateBrush
---@field ForegroundColor FSlateColor
---@field HorizontalSeparatorBrush FSlateBrush
---@field HorizontalSeparatorThickness float
FHeaderRowStyle = {}

---@return FHeaderRowStyle
function FHeaderRowStyle:get() end



---@class FHyperlinkStyle : FSlateWidgetStyle
---@field UnderlineStyle FButtonStyle
---@field TextStyle FTextBlockStyle
---@field Padding FMargin
FHyperlinkStyle = {}

---@return FHyperlinkStyle
function FHyperlinkStyle:get() end



---@class FInlineEditableTextBlockStyle : FSlateWidgetStyle
---@field EditableTextBoxStyle FEditableTextBoxStyle
---@field TextStyle FTextBlockStyle
FInlineEditableTextBlockStyle = {}

---@return FInlineEditableTextBlockStyle
function FInlineEditableTextBlockStyle:get() end



---@class FInlineTextImageStyle : FSlateWidgetStyle
---@field Image FSlateBrush
---@field Baseline int16
FInlineTextImageStyle = {}

---@return FInlineTextImageStyle
function FInlineTextImageStyle:get() end



---@class FInputEvent
FInputEvent = {}

---@return FInputEvent
function FInputEvent:get() end


---@class FKeyEvent : FInputEvent
FKeyEvent = {}

---@return FKeyEvent
function FKeyEvent:get() end


---@class FMargin
---@field Left float
---@field Top float
---@field Right float
---@field Bottom float
FMargin = {}

---@return FMargin
function FMargin:get() end



---@class FMotionEvent : FInputEvent
FMotionEvent = {}

---@return FMotionEvent
function FMotionEvent:get() end


---@class FNavigationEvent : FInputEvent
FNavigationEvent = {}

---@return FNavigationEvent
function FNavigationEvent:get() end


---@class FPointerEvent : FInputEvent
FPointerEvent = {}

---@return FPointerEvent
function FPointerEvent:get() end


---@class FProgressBarStyle : FSlateWidgetStyle
---@field BackgroundImage FSlateBrush
---@field FillImage FSlateBrush
---@field MarqueeImage FSlateBrush
---@field EnableFillAnimation boolean
FProgressBarStyle = {}

---@return FProgressBarStyle
function FProgressBarStyle:get() end



---@class FScrollBarStyle : FSlateWidgetStyle
---@field HorizontalBackgroundImage FSlateBrush
---@field VerticalBackgroundImage FSlateBrush
---@field VerticalTopSlotImage FSlateBrush
---@field HorizontalTopSlotImage FSlateBrush
---@field VerticalBottomSlotImage FSlateBrush
---@field HorizontalBottomSlotImage FSlateBrush
---@field NormalThumbImage FSlateBrush
---@field HoveredThumbImage FSlateBrush
---@field DraggedThumbImage FSlateBrush
---@field Thickness float
FScrollBarStyle = {}

---@return FScrollBarStyle
function FScrollBarStyle:get() end



---@class FScrollBorderStyle : FSlateWidgetStyle
---@field TopShadowBrush FSlateBrush
---@field BottomShadowBrush FSlateBrush
FScrollBorderStyle = {}

---@return FScrollBorderStyle
function FScrollBorderStyle:get() end



---@class FScrollBoxStyle : FSlateWidgetStyle
---@field BarThickness float
---@field TopShadowBrush FSlateBrush
---@field BottomShadowBrush FSlateBrush
---@field LeftShadowBrush FSlateBrush
---@field RightShadowBrush FSlateBrush
FScrollBoxStyle = {}

---@return FScrollBoxStyle
function FScrollBoxStyle:get() end



---@class FSearchBoxStyle : FSlateWidgetStyle
---@field TextBoxStyle FEditableTextBoxStyle
---@field ActiveFontInfo FSlateFontInfo
---@field UpArrowImage FSlateBrush
---@field DownArrowImage FSlateBrush
---@field GlassImage FSlateBrush
---@field ClearImage FSlateBrush
---@field ImagePadding FMargin
---@field bLeftAlignButtons boolean
---@field bLeftAlignSearchResultButtons boolean
---@field bLeftAlignGlassImageAndClearButton boolean
FSearchBoxStyle = {}

---@return FSearchBoxStyle
function FSearchBoxStyle:get() end



---@class FSegmentedControlStyle : FSlateWidgetStyle
---@field ControlStyle FCheckBoxStyle
---@field FirstControlStyle FCheckBoxStyle
---@field LastControlStyle FCheckBoxStyle
---@field BackgroundBrush FSlateBrush
---@field UniformPadding FMargin
FSegmentedControlStyle = {}

---@return FSegmentedControlStyle
function FSegmentedControlStyle:get() end



---@class FSlateBrush
---@field bIsDynamicallyLoaded boolean
---@field bHasUObject boolean
---@field DrawAs ESlateBrushDrawType::Type
---@field Tiling ESlateBrushTileType::Type
---@field Mirroring ESlateBrushMirrorType::Type
---@field ImageType ESlateBrushImageType::Type
---@field ImageSize FVector2D
---@field Margin FMargin
---@field TintColor FSlateColor
---@field OutlineSettings FSlateBrushOutlineSettings
---@field ResourceObject UObject
---@field ResourceName FName
---@field UVRegion FBox2f
FSlateBrush = {}

---@return FSlateBrush
function FSlateBrush:get() end



---@class FSlateBrushOutlineSettings
---@field CornerRadii FVector4
---@field Color FSlateColor
---@field Width float
---@field RoundingType ESlateBrushRoundingType::Type
---@field bUseBrushTransparency boolean
FSlateBrushOutlineSettings = {}

---@return FSlateBrushOutlineSettings
function FSlateBrushOutlineSettings:get() end



---@class FSlateColor
---@field SpecifiedColor FLinearColor
---@field ColorUseRule ESlateColorStylingMode
FSlateColor = {}

---@return FSlateColor
function FSlateColor:get() end



---@class FSlateFontInfo
---@field FontObject UObject
---@field FontMaterial UObject
---@field OutlineSettings FFontOutlineSettings
---@field TypefaceFontName FName
---@field Size int32
---@field LetterSpacing int32
---@field SkewAmount float
FSlateFontInfo = {}

---@return FSlateFontInfo
function FSlateFontInfo:get() end



---@class FSlateSound
---@field ResourceObject UObject
FSlateSound = {}

---@return FSlateSound
function FSlateSound:get() end



---@class FSlateWidgetStyle
FSlateWidgetStyle = {}

---@return FSlateWidgetStyle
function FSlateWidgetStyle:get() end


---@class FSliderStyle : FSlateWidgetStyle
---@field NormalBarImage FSlateBrush
---@field HoveredBarImage FSlateBrush
---@field DisabledBarImage FSlateBrush
---@field NormalThumbImage FSlateBrush
---@field HoveredThumbImage FSlateBrush
---@field DisabledThumbImage FSlateBrush
---@field BarThickness float
FSliderStyle = {}

---@return FSliderStyle
function FSliderStyle:get() end



---@class FSpinBoxStyle : FSlateWidgetStyle
---@field BackgroundBrush FSlateBrush
---@field ActiveBackgroundBrush FSlateBrush
---@field HoveredBackgroundBrush FSlateBrush
---@field ActiveFillBrush FSlateBrush
---@field HoveredFillBrush FSlateBrush
---@field InactiveFillBrush FSlateBrush
---@field ArrowsImage FSlateBrush
---@field ForegroundColor FSlateColor
---@field TextPadding FMargin
---@field InsetPadding FMargin
FSpinBoxStyle = {}

---@return FSpinBoxStyle
function FSpinBoxStyle:get() end



---@class FSplitterStyle : FSlateWidgetStyle
---@field HandleNormalBrush FSlateBrush
---@field HandleHighlightBrush FSlateBrush
FSplitterStyle = {}

---@return FSplitterStyle
function FSplitterStyle:get() end



---@class FStyleColorList
---@field StyleColors FLinearColor
FStyleColorList = {}

---@return FStyleColorList
function FStyleColorList:get() end



---@class FStyleTheme
FStyleTheme = {}

---@return FStyleTheme
function FStyleTheme:get() end


---@class FTableColumnHeaderStyle : FSlateWidgetStyle
---@field SortPrimaryAscendingImage FSlateBrush
---@field SortPrimaryDescendingImage FSlateBrush
---@field SortSecondaryAscendingImage FSlateBrush
---@field SortSecondaryDescendingImage FSlateBrush
---@field NormalBrush FSlateBrush
---@field HoveredBrush FSlateBrush
---@field MenuDropdownImage FSlateBrush
---@field MenuDropdownNormalBorderBrush FSlateBrush
---@field MenuDropdownHoveredBorderBrush FSlateBrush
FTableColumnHeaderStyle = {}

---@return FTableColumnHeaderStyle
function FTableColumnHeaderStyle:get() end



---@class FTableRowStyle : FSlateWidgetStyle
---@field SelectorFocusedBrush FSlateBrush
---@field ActiveHoveredBrush FSlateBrush
---@field ActiveBrush FSlateBrush
---@field InactiveHoveredBrush FSlateBrush
---@field InactiveBrush FSlateBrush
---@field bUseParentRowBrush boolean
---@field ParentRowBackgroundBrush FSlateBrush
---@field ParentRowBackgroundHoveredBrush FSlateBrush
---@field EvenRowBackgroundHoveredBrush FSlateBrush
---@field EvenRowBackgroundBrush FSlateBrush
---@field OddRowBackgroundHoveredBrush FSlateBrush
---@field OddRowBackgroundBrush FSlateBrush
---@field TextColor FSlateColor
---@field SelectedTextColor FSlateColor
---@field DropIndicator_Above FSlateBrush
---@field DropIndicator_Onto FSlateBrush
---@field DropIndicator_Below FSlateBrush
---@field ActiveHighlightedBrush FSlateBrush
---@field InactiveHighlightedBrush FSlateBrush
FTableRowStyle = {}

---@return FTableRowStyle
function FTableRowStyle:get() end



---@class FTableViewStyle : FSlateWidgetStyle
---@field BackgroundBrush FSlateBrush
FTableViewStyle = {}

---@return FTableViewStyle
function FTableViewStyle:get() end



---@class FTextBlockStyle : FSlateWidgetStyle
---@field Font FSlateFontInfo
---@field ColorAndOpacity FSlateColor
---@field ShadowOffset FVector2D
---@field ShadowColorAndOpacity FLinearColor
---@field SelectedBackgroundColor FSlateColor
---@field HighlightColor FSlateColor
---@field HighlightShape FSlateBrush
---@field StrikeBrush FSlateBrush
---@field UnderlineBrush FSlateBrush
---@field TransformPolicy ETextTransformPolicy
---@field OverflowPolicy ETextOverflowPolicy
FTextBlockStyle = {}

---@return FTextBlockStyle
function FTextBlockStyle:get() end



---@class FToolBarStyle : FSlateWidgetStyle
---@field BackgroundBrush FSlateBrush
---@field ExpandBrush FSlateBrush
---@field SeparatorBrush FSlateBrush
---@field LabelStyle FTextBlockStyle
---@field EditableTextStyle FEditableTextBoxStyle
---@field ToggleButton FCheckBoxStyle
---@field ComboButtonStyle FComboButtonStyle
---@field SettingsButtonStyle FButtonStyle
---@field SettingsComboButton FComboButtonStyle
---@field SettingsToggleButton FCheckBoxStyle
---@field ButtonStyle FButtonStyle
---@field LabelPadding FMargin
---@field SeparatorPadding FMargin
---@field ComboButtonPadding FMargin
---@field ButtonPadding FMargin
---@field CheckBoxPadding FMargin
---@field BlockPadding FMargin
---@field IndentedBlockPadding FMargin
---@field BackgroundPadding FMargin
---@field IconSize FVector2D
---@field bShowLabels boolean
FToolBarStyle = {}

---@return FToolBarStyle
function FToolBarStyle:get() end



---@class FTypeface
---@field Fonts TArray<FTypefaceEntry>
FTypeface = {}

---@return FTypeface
function FTypeface:get() end



---@class FTypefaceEntry
---@field Name FName
---@field Font FFontData
FTypefaceEntry = {}

---@return FTypefaceEntry
function FTypefaceEntry:get() end



---@class FVolumeControlStyle : FSlateWidgetStyle
---@field SliderStyle FSliderStyle
---@field HighVolumeImage FSlateBrush
---@field MidVolumeImage FSlateBrush
---@field LowVolumeImage FSlateBrush
---@field NoVolumeImage FSlateBrush
---@field MutedImage FSlateBrush
FVolumeControlStyle = {}

---@return FVolumeControlStyle
function FVolumeControlStyle:get() end



---@class FWindowStyle : FSlateWidgetStyle
---@field MinimizeButtonStyle FButtonStyle
---@field MaximizeButtonStyle FButtonStyle
---@field RestoreButtonStyle FButtonStyle
---@field CloseButtonStyle FButtonStyle
---@field TitleTextStyle FTextBlockStyle
---@field ActiveTitleBrush FSlateBrush
---@field InactiveTitleBrush FSlateBrush
---@field FlashTitleBrush FSlateBrush
---@field BackgroundColor FSlateColor
---@field OutlineBrush FSlateBrush
---@field OutlineColor FSlateColor
---@field BorderBrush FSlateBrush
---@field BorderColor FSlateColor
---@field BackgroundBrush FSlateBrush
---@field ChildBackgroundBrush FSlateBrush
---@field WindowCornerRadius int32
---@field BorderPadding FMargin
FWindowStyle = {}

---@return FWindowStyle
function FWindowStyle:get() end



---@class IFontFaceInterface : IInterface
IFontFaceInterface = {}

---@return IFontFaceInterface
function IFontFaceInterface:get() end


---@class IFontProviderInterface : IInterface
IFontProviderInterface = {}

---@return IFontProviderInterface
function IFontProviderInterface:get() end


---@class ISlateWidgetStyleContainerInterface : IInterface
ISlateWidgetStyleContainerInterface = {}

---@return ISlateWidgetStyleContainerInterface
function ISlateWidgetStyleContainerInterface:get() end


---@class UFontBulkData : UObject
UFontBulkData = {}

---@return UFontBulkData
function UFontBulkData:get() end


---@class USlateThemeManager : UObject
---@field CurrentThemeId FGuid
---@field ActiveColors FStyleColorList
USlateThemeManager = {}

---@return USlateThemeManager
function USlateThemeManager:get() end



---@class USlateTypes : UObject
USlateTypes = {}

---@return USlateTypes
function USlateTypes:get() end


---@class USlateWidgetStyleAsset : UObject
---@field CustomStyle USlateWidgetStyleContainerBase
USlateWidgetStyleAsset = {}

---@return USlateWidgetStyleAsset
function USlateWidgetStyleAsset:get() end



---@class USlateWidgetStyleContainerBase : UObject
USlateWidgetStyleContainerBase = {}

---@return USlateWidgetStyleContainerBase
function USlateWidgetStyleContainerBase:get() end


