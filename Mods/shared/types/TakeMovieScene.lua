---@meta

---@class UMovieSceneTakeSection : UMovieSceneSection
---@field HoursCurve FMovieSceneIntegerChannel
---@field MinutesCurve FMovieSceneIntegerChannel
---@field SecondsCurve FMovieSceneIntegerChannel
---@field FramesCurve FMovieSceneIntegerChannel
---@field SubFramesCurve FMovieSceneFloatChannel
---@field Slate FMovieSceneStringChannel
UMovieSceneTakeSection = {}

---@return UMovieSceneTakeSection
function UMovieSceneTakeSection:get() end



---@class UMovieSceneTakeSettings : UObject
---@field HoursName FString
---@field MinutesName FString
---@field SecondsName FString
---@field FramesName FString
---@field SubFramesName FString
---@field SlateName FString
UMovieSceneTakeSettings = {}

---@return UMovieSceneTakeSettings
function UMovieSceneTakeSettings:get() end



---@class UMovieSceneTakeTrack : UMovieSceneNameableTrack
---@field Sections TArray<UMovieSceneSection>
UMovieSceneTakeTrack = {}

---@return UMovieSceneTakeTrack
function UMovieSceneTakeTrack:get() end



