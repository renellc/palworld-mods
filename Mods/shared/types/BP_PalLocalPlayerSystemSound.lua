---@meta

---@class UBP_PalLocalPlayerSystemSound_C : UPalGetWorldUObject
UBP_PalLocalPlayerSystemSound_C = {}

---@return UBP_PalLocalPlayerSystemSound_C
function UBP_PalLocalPlayerSystemSound_C:get() end

---@param Current EPalStatusHungerType
---@param Last EPalStatusHungerType
function UBP_PalLocalPlayerSystemSound_C:OnChangeHunger(Current, Last) end
---@param Player APalPlayerCharacter
function UBP_PalLocalPlayerSystemSound_C:SetupLocalPlayer(Player) end


