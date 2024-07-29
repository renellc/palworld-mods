---@meta

---@class UAutomationUtilsBlueprintLibrary : UBlueprintFunctionLibrary
UAutomationUtilsBlueprintLibrary = {}

---@return UAutomationUtilsBlueprintLibrary
function UAutomationUtilsBlueprintLibrary:get() end

---@param ScreenshotName FString
---@param MaxGlobalError float
---@param MaxLocalError float
---@param MapNameOverride FString
function UAutomationUtilsBlueprintLibrary:TakeGameplayAutomationScreenshot(ScreenshotName, MaxGlobalError, MaxLocalError, MapNameOverride) end


