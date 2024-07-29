---@meta

---@class FMovieSceneGeometryCollectionParams
---@field GeometryCollectionCache FSoftObjectPath
---@field StartFrameOffset FFrameNumber
---@field EndFrameOffset FFrameNumber
---@field PlayRate float
FMovieSceneGeometryCollectionParams = {}

---@return FMovieSceneGeometryCollectionParams
function FMovieSceneGeometryCollectionParams:get() end



---@class FMovieSceneGeometryCollectionSectionTemplate : FMovieSceneEvalTemplate
---@field Params FMovieSceneGeometryCollectionSectionTemplateParameters
FMovieSceneGeometryCollectionSectionTemplate = {}

---@return FMovieSceneGeometryCollectionSectionTemplate
function FMovieSceneGeometryCollectionSectionTemplate:get() end



---@class FMovieSceneGeometryCollectionSectionTemplateParameters : FMovieSceneGeometryCollectionParams
---@field SectionStartTime FFrameNumber
---@field SectionEndTime FFrameNumber
FMovieSceneGeometryCollectionSectionTemplateParameters = {}

---@return FMovieSceneGeometryCollectionSectionTemplateParameters
function FMovieSceneGeometryCollectionSectionTemplateParameters:get() end



---@class UMovieSceneGeometryCollectionSection : UMovieSceneSection
---@field Params FMovieSceneGeometryCollectionParams
UMovieSceneGeometryCollectionSection = {}

---@return UMovieSceneGeometryCollectionSection
function UMovieSceneGeometryCollectionSection:get() end



---@class UMovieSceneGeometryCollectionTrack : UMovieSceneNameableTrack
---@field AnimationSections TArray<UMovieSceneSection>
UMovieSceneGeometryCollectionTrack = {}

---@return UMovieSceneGeometryCollectionTrack
function UMovieSceneGeometryCollectionTrack:get() end



