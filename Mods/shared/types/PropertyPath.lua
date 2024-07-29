---@meta

---@class FCachedPropertyPath
---@field Segments TArray<FPropertyPathSegment>
---@field CachedFunction UFunction
FCachedPropertyPath = {}

---@return FCachedPropertyPath
function FCachedPropertyPath:get() end



---@class FPropertyPathSegment
---@field Name FName
---@field ArrayIndex int32
---@field Struct UStruct
FPropertyPathSegment = {}

---@return FPropertyPathSegment
function FPropertyPathSegment:get() end



