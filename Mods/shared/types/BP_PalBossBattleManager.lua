---@meta

---@class UBP_PalBossBattleManager_C : UPalBossBattleManager
---@field UberGraphFrame FPointerToUberGraphFrame
UBP_PalBossBattleManager_C = {}

---@return UBP_PalBossBattleManager_C
function UBP_PalBossBattleManager_C:get() end

---@param Activce boolean
---@param Sky APPSkyCreator
function UBP_PalBossBattleManager_C:DisableSky(Activce, Sky) end
---@param Disable boolean
function UBP_PalBossBattleManager_C:DisableSkyCreator(Disable) end
---@param EntryPoint int32
function UBP_PalBossBattleManager_C:ExecuteUbergraph_BP_PalBossBattleManager(EntryPoint) end


