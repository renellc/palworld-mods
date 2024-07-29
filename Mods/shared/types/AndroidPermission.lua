---@meta

---@class UAndroidPermissionCallbackProxy : UObject
---@field OnPermissionsGrantedDynamicDelegate FAndroidPermissionCallbackProxyOnPermissionsGrantedDynamicDelegate
UAndroidPermissionCallbackProxy = {}

---@return UAndroidPermissionCallbackProxy
function UAndroidPermissionCallbackProxy:get() end



---@class UAndroidPermissionFunctionLibrary : UBlueprintFunctionLibrary
UAndroidPermissionFunctionLibrary = {}

---@return UAndroidPermissionFunctionLibrary
function UAndroidPermissionFunctionLibrary:get() end

---@param Permission FString
---@return boolean
function UAndroidPermissionFunctionLibrary:CheckPermission(Permission) end
---@param Permissions TArray<FString>
---@return UAndroidPermissionCallbackProxy
function UAndroidPermissionFunctionLibrary:AcquirePermissions(Permissions) end


