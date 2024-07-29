---@meta

---@class ABP_MonsterAIControllerBase_C : APalAIController
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BP_AIADamageReaction UBP_AIADamageReaction_C
---@field DefaultActionClass TSubclassOf<UPalAIActionBase>
---@field DefaultRootCompositeActionClass TSubclassOf<UPalAIActionCompositeBase>
---@field bPlayDefaultCompositeAction boolean
---@field IsSetupEnd boolean
---@field IsAutoPlayDefaultAction boolean
ABP_MonsterAIControllerBase_C = {}

---@return ABP_MonsterAIControllerBase_C
function ABP_MonsterAIControllerBase_C:get() end

---@param LogType EPalMonsterControllerBaseCampLogType
---@param StyleName FName
function ABP_MonsterAIControllerBase_C:ToLogFontStyleName(LogType, StyleName) end
---@param Content FPalMonsterControllerBaseCampLogContent
function ABP_MonsterAIControllerBase_C:ShowBaseCampLog_Internal(Content) end
---@param Content FPalMonsterControllerBaseCampLogContent
---@param Result FText
function ABP_MonsterAIControllerBase_C:CreateBaseCampLogMessageText(Content, Result) end
---@param LogType EPalMonsterControllerBaseCampLogType
---@param toneType EPalLogContentToneType
ABP_MonsterAIControllerBase_C['To Log Tone Type'] = function(LogType, toneType) end
function ABP_MonsterAIControllerBase_C:PlayDefaultAction() end
---@param PossessedPawn APawn
function ABP_MonsterAIControllerBase_C:ReceivePossess(PossessedPawn) end
---@param DeltaSeconds float
function ABP_MonsterAIControllerBase_C:ReceiveTick(DeltaSeconds) end
---@param InCharacter APalCharacter
ABP_MonsterAIControllerBase_C['カスタムイベント_0'] = function(InCharacter) end
function ABP_MonsterAIControllerBase_C:SetupBySpawner() end
---@param EntryPoint int32
function ABP_MonsterAIControllerBase_C:ExecuteUbergraph_BP_MonsterAIControllerBase(EntryPoint) end


