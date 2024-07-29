---@meta

---@class UReflexBlueprintLibrary : UBlueprintFunctionLibrary
UReflexBlueprintLibrary = {}

---@return UReflexBlueprintLibrary
function UReflexBlueprintLibrary:get() end

---@param Mode EReflexMode
function UReflexBlueprintLibrary:SetReflexMode(Mode) end
---@param bEnabled boolean
function UReflexBlueprintLibrary:SetFlashIndicatorEnabled(bEnabled) end
---@return float
function UReflexBlueprintLibrary:GetRenderLatencyInMs() end
---@return EReflexMode
function UReflexBlueprintLibrary:GetReflexMode() end
---@return boolean
function UReflexBlueprintLibrary:GetReflexAvailable() end
---@return float
function UReflexBlueprintLibrary:GetGameToRenderLatencyInMs() end
---@return float
function UReflexBlueprintLibrary:GetGameLatencyInMs() end
---@return boolean
function UReflexBlueprintLibrary:GetFlashIndicatorEnabled() end


