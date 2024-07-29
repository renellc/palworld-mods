---@meta

---@class APL_Title_C : ALevelScriptActor
---@field UberGraphFrame FPointerToUberGraphFrame
APL_Title_C = {}

---@return APL_Title_C
function APL_Title_C:get() end

function APL_Title_C:ReceiveBeginPlay() end
---@param EntryPoint int32
function APL_Title_C:ExecuteUbergraph_PL_Title(EntryPoint) end


