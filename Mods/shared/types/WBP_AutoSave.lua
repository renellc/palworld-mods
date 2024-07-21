---@meta

---@class UWBP_AutoSave_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Anm_Saving UWidgetAnimation
---@field Image_IconBase UImage
---@field Image_IconPart_0 UImage
---@field Image_IconPart_1 UImage
---@field Image_IconPart_2 UImage
---@field Image_IconPart_3 UImage
---@field Image_IconPart_4 UImage
---@field Image_IconPart_5 UImage
---@field IsForceDisplayngTime boolean
---@field ForceDisplayTimerHandle FTimerHandle
---@field SavingFlagMap TMap<FName, boolean>
---@field WorldSavingKey FName
---@field LocalSavingKey FName
---@field ForceDisplayTime double
UWBP_AutoSave_C = {}

function UWBP_AutoSave_C:OnEndedForceDisplayingTime() end
---@param bCompleted boolean
function UWBP_AutoSave_C:IsAllSaveCompleted(bCompleted) end
---@param SavingKey FName
function UWBP_AutoSave_C:EndSave(SavingKey) end
---@param SavingKey FName
function UWBP_AutoSave_C:StartSaving(SavingKey) end
function UWBP_AutoSave_C:Display() end
function UWBP_AutoSave_C:Hide() end
function UWBP_AutoSave_C:AnmEvent_Loop() end
function UWBP_AutoSave_C:AnmEvent_Stop() end
function UWBP_AutoSave_C:Destruct() end
function UWBP_AutoSave_C:Construct() end
function UWBP_AutoSave_C:OnStartWorldSaving() end
function UWBP_AutoSave_C:OnStartLocalSaving() end
---@param IsSuccess boolean
function UWBP_AutoSave_C:OnEndedWorldSave(IsSuccess) end
---@param IsSuccess boolean
function UWBP_AutoSave_C:OnEndedLocalSave(IsSuccess) end
---@param EntryPoint int32
function UWBP_AutoSave_C:ExecuteUbergraph_WBP_AutoSave(EntryPoint) end


