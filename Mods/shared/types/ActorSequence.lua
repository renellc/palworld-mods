---@meta

---@class FActorSequenceObjectReference
---@field Type EActorSequenceObjectReferenceType
---@field ActorId FGuid
---@field PathToComponent FString
FActorSequenceObjectReference = {}

---@return FActorSequenceObjectReference
function FActorSequenceObjectReference:get() end



---@class FActorSequenceObjectReferenceMap
---@field BindingIds TArray<FGuid>
---@field References TArray<FActorSequenceObjectReferences>
FActorSequenceObjectReferenceMap = {}

---@return FActorSequenceObjectReferenceMap
function FActorSequenceObjectReferenceMap:get() end



---@class FActorSequenceObjectReferences
---@field Array TArray<FActorSequenceObjectReference>
FActorSequenceObjectReferences = {}

---@return FActorSequenceObjectReferences
function FActorSequenceObjectReferences:get() end



---@class UActorSequence : UMovieSceneSequence
---@field MovieScene UMovieScene
---@field ObjectReferences FActorSequenceObjectReferenceMap
UActorSequence = {}

---@return UActorSequence
function UActorSequence:get() end



---@class UActorSequenceComponent : UActorComponent
---@field PlaybackSettings FMovieSceneSequencePlaybackSettings
---@field Sequence UActorSequence
---@field SequencePlayer UActorSequencePlayer
UActorSequenceComponent = {}

---@return UActorSequenceComponent
function UActorSequenceComponent:get() end

function UActorSequenceComponent:StopSequence() end
function UActorSequenceComponent:PlaySequence() end
function UActorSequenceComponent:PauseSequence() end


---@class UActorSequencePlayer : UMovieSceneSequencePlayer
UActorSequencePlayer = {}

---@return UActorSequencePlayer
function UActorSequencePlayer:get() end


