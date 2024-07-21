---@meta

---@class UWBP_Title_ProgressBar_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ProgressBar UProgressBar
---@field CurrentProgressValue double
---@field TargetProgressValue double
UWBP_Title_ProgressBar_C = {}

function UWBP_Title_ProgressBar_C:SetProgressBar() end
---@param NewValue double
function UWBP_Title_ProgressBar_C:SetProgressValue(NewValue) end
---@param MyGeometry FGeometry
---@param InDeltaTime float
function UWBP_Title_ProgressBar_C:Tick(MyGeometry, InDeltaTime) end
---@param EntryPoint int32
function UWBP_Title_ProgressBar_C:ExecuteUbergraph_WBP_Title_ProgressBar(EntryPoint) end


