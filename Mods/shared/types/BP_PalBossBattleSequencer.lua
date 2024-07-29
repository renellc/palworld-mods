---@meta

---@class UBP_PalBossBattleSequencer_C : UPalBossBattleSequencer
---@field UberGraphFrame FPointerToUberGraphFrame
UBP_PalBossBattleSequencer_C = {}

---@return UBP_PalBossBattleSequencer_C
function UBP_PalBossBattleSequencer_C:get() end

---@param DeltaTime float
function UBP_PalBossBattleSequencer_C:Tick_ForBP(DeltaTime) end
---@param EntryPoint int32
function UBP_PalBossBattleSequencer_C:ExecuteUbergraph_BP_PalBossBattleSequencer(EntryPoint) end


