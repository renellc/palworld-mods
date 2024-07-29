---@meta

---@class UAnimNotify_AkEvent_C : UAnimNotify
---@field ['Attach Name'] FString
---@field Event UAkAudioEvent
---@field Follow boolean
---@field EventName FString
UAnimNotify_AkEvent_C = {}

---@return UAnimNotify_AkEvent_C
function UAnimNotify_AkEvent_C:get() end

---@param MeshComp USkeletalMeshComponent
---@param Animation UAnimSequenceBase
---@param EventReference FAnimNotifyEventReference
---@return boolean
function UAnimNotify_AkEvent_C:Received_Notify(MeshComp, Animation, EventReference) end


