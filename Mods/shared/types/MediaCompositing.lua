---@meta

---@class FMovieSceneMediaPlayerPropertySectionTemplate : FMovieScenePropertySectionTemplate
---@field MediaSource UMediaSource
---@field SectionStartFrame FFrameNumber
---@field bLoop boolean
FMovieSceneMediaPlayerPropertySectionTemplate = {}

---@return FMovieSceneMediaPlayerPropertySectionTemplate
function FMovieSceneMediaPlayerPropertySectionTemplate:get() end



---@class FMovieSceneMediaSectionParams
---@field MediaSoundComponent UMediaSoundComponent
---@field MediaSource UMediaSource
---@field MediaTexture UMediaTexture
---@field MediaPlayer UMediaPlayer
---@field SectionStartFrame FFrameNumber
---@field SectionEndFrame FFrameNumber
---@field bLooping boolean
---@field StartFrameOffset FFrameNumber
FMovieSceneMediaSectionParams = {}

---@return FMovieSceneMediaSectionParams
function FMovieSceneMediaSectionParams:get() end



---@class FMovieSceneMediaSectionTemplate : FMovieSceneEvalTemplate
---@field Params FMovieSceneMediaSectionParams
FMovieSceneMediaSectionTemplate = {}

---@return FMovieSceneMediaSectionTemplate
function FMovieSceneMediaSectionTemplate:get() end



---@class UMovieSceneMediaPlayerPropertySection : UMovieSceneSection
---@field MediaSource UMediaSource
---@field bLoop boolean
UMovieSceneMediaPlayerPropertySection = {}

---@return UMovieSceneMediaPlayerPropertySection
function UMovieSceneMediaPlayerPropertySection:get() end



---@class UMovieSceneMediaPlayerPropertyTrack : UMovieScenePropertyTrack
UMovieSceneMediaPlayerPropertyTrack = {}

---@return UMovieSceneMediaPlayerPropertyTrack
function UMovieSceneMediaPlayerPropertyTrack:get() end


---@class UMovieSceneMediaSection : UMovieSceneSection
---@field MediaSource UMediaSource
---@field bLooping boolean
---@field StartFrameOffset FFrameNumber
---@field MediaTexture UMediaTexture
---@field MediaSoundComponent UMediaSoundComponent
---@field bUseExternalMediaPlayer boolean
---@field ExternalMediaPlayer UMediaPlayer
---@field CacheSettings FMediaSourceCacheSettings
---@field bHasMediaPlayerProxy boolean
UMovieSceneMediaSection = {}

---@return UMovieSceneMediaSection
function UMovieSceneMediaSection:get() end



---@class UMovieSceneMediaTrack : UMovieSceneNameableTrack
---@field MediaSections TArray<UMovieSceneSection>
UMovieSceneMediaTrack = {}

---@return UMovieSceneMediaTrack
function UMovieSceneMediaTrack:get() end



