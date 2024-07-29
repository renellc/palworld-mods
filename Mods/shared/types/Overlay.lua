---@meta

---@class FOverlayItem
---@field StartTime FTimespan
---@field EndTime FTimespan
---@field Text FString
---@field Position FVector2D
FOverlayItem = {}

---@return FOverlayItem
function FOverlayItem:get() end



---@class UBasicOverlays : UOverlays
---@field Overlays TArray<FOverlayItem>
UBasicOverlays = {}

---@return UBasicOverlays
function UBasicOverlays:get() end



---@class ULocalizedOverlays : UOverlays
---@field DefaultOverlays UBasicOverlays
---@field LocaleToOverlaysMap TMap<FString, UBasicOverlays>
ULocalizedOverlays = {}

---@return ULocalizedOverlays
function ULocalizedOverlays:get() end



---@class UOverlays : UObject
UOverlays = {}

---@return UOverlays
function UOverlays:get() end


