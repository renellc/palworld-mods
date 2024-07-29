---@meta

---@class ABP_Explosion_Launcher_NPC_C : ABP_ExplosionAttackBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Explosive UNiagaraComponent
ABP_Explosion_Launcher_NPC_C = {}

---@return ABP_Explosion_Launcher_NPC_C
function ABP_Explosion_Launcher_NPC_C:get() end

---@param PSystem UNiagaraComponent
function ABP_Explosion_Launcher_NPC_C:BndEvt__BP_Explosion_PenguinLauncher_Explosive_K2Node_ComponentBoundEvent_0_OnNiagaraSystemFinished__DelegateSignature(PSystem) end
---@param EntryPoint int32
function ABP_Explosion_Launcher_NPC_C:ExecuteUbergraph_BP_Explosion_Launcher_NPC(EntryPoint) end


