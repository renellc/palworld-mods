---@meta

---@class UMovieSceneLensComponentSection : UMovieSceneHookSection
---@field bReapplyNodalOffset boolean
---@field OverrideLensFile ULensFile
---@field CachedLensFile ULensFile
---@field DistortionParameterChannels TArray<FMovieSceneFloatChannel>
---@field FxFyChannels TArray<FMovieSceneFloatChannel>
---@field ImageCenterChannels TArray<FMovieSceneFloatChannel>
UMovieSceneLensComponentSection = {}

---@return UMovieSceneLensComponentSection
function UMovieSceneLensComponentSection:get() end



---@class UMovieSceneLensComponentTrack : UMovieSceneNameableTrack
---@field Sections TArray<UMovieSceneSection>
UMovieSceneLensComponentTrack = {}

---@return UMovieSceneLensComponentTrack
function UMovieSceneLensComponentTrack:get() end



