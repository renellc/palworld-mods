---@meta

---@class FActorLayer
---@field Name FName
FActorLayer = {}

---@return FActorLayer
function FActorLayer:get() end



---@class ULayersBlueprintLibrary : UBlueprintFunctionLibrary
ULayersBlueprintLibrary = {}

---@return ULayersBlueprintLibrary
function ULayersBlueprintLibrary:get() end

---@param InActor AActor
---@param Layer FActorLayer
function ULayersBlueprintLibrary:RemoveActorFromLayer(InActor, Layer) end
---@param WorldContextObject UObject
---@param ActorLayer FActorLayer
---@return TArray<AActor>
function ULayersBlueprintLibrary:GetActors(WorldContextObject, ActorLayer) end
---@param InActor AActor
---@param Layer FActorLayer
function ULayersBlueprintLibrary:AddActorToLayer(InActor, Layer) end


