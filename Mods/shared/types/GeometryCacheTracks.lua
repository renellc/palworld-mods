---@meta

---@class FMovieSceneGeometryCacheParams
---@field GeometryCacheAsset UGeometryCache
---@field FirstLoopStartFrameOffset FFrameNumber
---@field StartFrameOffset FFrameNumber
---@field EndFrameOffset FFrameNumber
---@field PlayRate float
---@field bReverse boolean
---@field StartOffset float
---@field EndOffset float
---@field GeometryCache FSoftObjectPath
FMovieSceneGeometryCacheParams = {}

---@return FMovieSceneGeometryCacheParams
function FMovieSceneGeometryCacheParams:get() end



---@class FMovieSceneGeometryCacheSectionTemplate : FMovieSceneEvalTemplate
---@field Params FMovieSceneGeometryCacheSectionTemplateParameters
FMovieSceneGeometryCacheSectionTemplate = {}

---@return FMovieSceneGeometryCacheSectionTemplate
function FMovieSceneGeometryCacheSectionTemplate:get() end



---@class FMovieSceneGeometryCacheSectionTemplateParameters : FMovieSceneGeometryCacheParams
---@field SectionStartTime FFrameNumber
---@field SectionEndTime FFrameNumber
FMovieSceneGeometryCacheSectionTemplateParameters = {}

---@return FMovieSceneGeometryCacheSectionTemplateParameters
function FMovieSceneGeometryCacheSectionTemplateParameters:get() end



---@class UMovieSceneGeometryCacheSection : UMovieSceneSection
---@field Params FMovieSceneGeometryCacheParams
UMovieSceneGeometryCacheSection = {}

---@return UMovieSceneGeometryCacheSection
function UMovieSceneGeometryCacheSection:get() end



---@class UMovieSceneGeometryCacheTrack : UMovieSceneNameableTrack
---@field AnimationSections TArray<UMovieSceneSection>
UMovieSceneGeometryCacheTrack = {}

---@return UMovieSceneGeometryCacheTrack
function UMovieSceneGeometryCacheTrack:get() end



