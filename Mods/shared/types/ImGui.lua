---@meta

---@class FImGuiCanvasSizeInfo
---@field SizeType EImGuiCanvasSizeType
---@field Width int32
---@field Height int32
---@field bExtendToViewport boolean
FImGuiCanvasSizeInfo = {}

---@return FImGuiCanvasSizeInfo
function FImGuiCanvasSizeInfo:get() end



---@class FImGuiDPIScaleInfo
---@field ScalingMethod EImGuiDPIScaleMethod
---@field Scale float
---@field DPICurve FRuntimeFloatCurve
---@field bScaleWithCurve boolean
FImGuiDPIScaleInfo = {}

---@return FImGuiDPIScaleInfo
function FImGuiDPIScaleInfo:get() end



---@class FImGuiKeyInfo
---@field Key FKey
---@field Shift ECheckBoxState
---@field Ctrl ECheckBoxState
---@field Alt ECheckBoxState
---@field Cmd ECheckBoxState
FImGuiKeyInfo = {}

---@return FImGuiKeyInfo
function FImGuiKeyInfo:get() end



---@class UImGuiInputHandler : UObject
UImGuiInputHandler = {}

---@return UImGuiInputHandler
function UImGuiInputHandler:get() end


---@class UImGuiSettings : UObject
---@field ImGuiInputHandlerClass FSoftClassPath
---@field bShareKeyboardInput boolean
---@field bShareGamepadInput boolean
---@field bShareMouseInput boolean
---@field bUseSoftwareCursor boolean
---@field ToggleInput FImGuiKeyInfo
---@field CanvasSize FImGuiCanvasSizeInfo
---@field DPIScale FImGuiDPIScaleInfo
UImGuiSettings = {}

---@return UImGuiSettings
function UImGuiSettings:get() end



