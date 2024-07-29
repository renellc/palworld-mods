---@meta

---@class IBP_AIController_Interface_Invader_C : IInterface
IBP_AIController_Interface_Invader_C = {}

---@return IBP_AIController_Interface_Invader_C
function IBP_AIController_Interface_Invader_C:get() end

---@param Event FBindOnInvaderArrivedDelegateEvent
function IBP_AIController_Interface_Invader_C:BindOnInvaderArrivedDelegate(Event) end
function IBP_AIController_Interface_Invader_C:OnInvaderArrived() end


