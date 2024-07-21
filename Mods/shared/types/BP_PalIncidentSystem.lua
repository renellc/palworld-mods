---@meta

---@class UBP_PalIncidentSystem_C : UPalIncidentSystem
---@field UberGraphFrame FPointerToUberGraphFrame
UBP_PalIncidentSystem_C = {}

---@param Weights TArray<double>
---@param Index int32
UBP_PalIncidentSystem_C['Lottery Index by Weights'] = function(Weights, Index) end
---@param PresentLotteryDataTable UDataTable
---@param OutItemName FName
---@param OutNum int32
function UBP_PalIncidentSystem_C:LotteryItemAndNum(PresentLotteryDataTable, OutItemName, OutNum) end
---@param TalkPlayer APalPlayerCharacter
---@param TargetNPC APalCharacter
---@param CunstomFuncParam UDataTable
function UBP_PalIncidentSystem_C:TalkCustomFunction_AttackToPlayer(TalkPlayer, TargetNPC, CunstomFuncParam) end
---@param EntryPoint int32
function UBP_PalIncidentSystem_C:ExecuteUbergraph_BP_PalIncidentSystem(EntryPoint) end


