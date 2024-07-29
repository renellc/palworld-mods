---@meta

---@class UBP_BossBattleEventBase_C : UPalBossBattleEventBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BossSpawner ABP_BossBattle_BossCharacterSpawner_C
UBP_BossBattleEventBase_C = {}

---@return UBP_BossBattleEventBase_C
function UBP_BossBattleEventBase_C:get() end

---@param IndividualHandle UPalIndividualCharacterHandle
---@param Offset FVector
function UBP_BossBattleEventBase_C:ActivateCharacter(IndividualHandle, Offset) end
---@param BitFlag int32
---@param Result boolean
function UBP_BossBattleEventBase_C:GetDebugNo(BitFlag, Result) end
---@param spawner ABP_BossBattle_BossCharacterSpawner_C
function UBP_BossBattleEventBase_C:SetSpawner(spawner) end
function UBP_BossBattleEventBase_C:OnTerminate() end
---@param EntryPoint int32
function UBP_BossBattleEventBase_C:ExecuteUbergraph_BP_BossBattleEventBase(EntryPoint) end


