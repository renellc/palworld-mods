---@meta

---@class FMyPluginStruct
---@field TestString FString
FMyPluginStruct = {}

---@return FMyPluginStruct
function FMyPluginStruct:get() end



---@class UMyPluginObject : UObject
---@field MyStruct FMyPluginStruct
UMyPluginObject = {}

---@return UMyPluginObject
function UMyPluginObject:get() end



