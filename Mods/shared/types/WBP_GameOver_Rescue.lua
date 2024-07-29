---@meta

---@class UWBP_GameOver_Rescue_C : UPalUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ProgressBar_Rescue UProgressBar
UWBP_GameOver_Rescue_C = {}

---@return UWBP_GameOver_Rescue_C
function UWBP_GameOver_Rescue_C:get() end

---@param Remain double
function UWBP_GameOver_Rescue_C:UpdateRescue(Remain) end
---@param EntryPoint int32
function UWBP_GameOver_Rescue_C:ExecuteUbergraph_WBP_GameOver_Rescue(EntryPoint) end


