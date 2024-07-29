---@meta

---@class IBPI_GetPalAIBlackboard_C : IInterface
IBPI_GetPalAIBlackboard_C = {}

---@return IBPI_GetPalAIBlackboard_C
function IBPI_GetPalAIBlackboard_C:get() end

---@param LeaderPalBrackboard UBP_PalAIBlackboard_Common_C
function IBPI_GetPalAIBlackboard_C:GetLeaderBB(LeaderPalBrackboard) end
---@param PalBrackboard UBP_PalAIBlackboard_Common_C
function IBPI_GetPalAIBlackboard_C:GetMyBB(PalBrackboard) end


