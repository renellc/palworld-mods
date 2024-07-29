---@meta

---@class FLiveLinkPropertyData
---@field PropertyName FName
---@field FloatChannel TArray<FMovieSceneFloatChannel>
---@field StringChannel TArray<FMovieSceneStringChannel>
---@field IntegerChannel TArray<FMovieSceneIntegerChannel>
---@field BoolChannel TArray<FMovieSceneBoolChannel>
---@field ByteChannel TArray<FMovieSceneByteChannel>
FLiveLinkPropertyData = {}

---@return FLiveLinkPropertyData
function FLiveLinkPropertyData:get() end



---@class FLiveLinkSubSectionData
---@field Properties TArray<FLiveLinkPropertyData>
FLiveLinkSubSectionData = {}

---@return FLiveLinkSubSectionData
function FLiveLinkSubSectionData:get() end



---@class FMovieSceneLiveLinkSectionTemplate : FMovieScenePropertySectionTemplate
---@field SubjectPreset FLiveLinkSubjectPreset
---@field ChannelMask TArray<boolean>
---@field SubSectionsData TArray<FLiveLinkSubSectionData>
FMovieSceneLiveLinkSectionTemplate = {}

---@return FMovieSceneLiveLinkSectionTemplate
function FMovieSceneLiveLinkSectionTemplate:get() end



---@class UMovieSceneLiveLinkSection : UMovieSceneSection
---@field SubjectPreset FLiveLinkSubjectPreset
---@field ChannelMask TArray<boolean>
---@field SubSections TArray<UMovieSceneLiveLinkSubSection>
---@field SubjectName FName
---@field TemplateToPush FLiveLinkFrameData
---@field RefSkeleton FLiveLinkRefSkeleton
---@field CurveNames TArray<FName>
---@field PropertyFloatChannels TArray<FMovieSceneFloatChannel>
UMovieSceneLiveLinkSection = {}

---@return UMovieSceneLiveLinkSection
function UMovieSceneLiveLinkSection:get() end



---@class UMovieSceneLiveLinkSubSection : UObject
---@field SubSectionData FLiveLinkSubSectionData
---@field SubjectRole TSubclassOf<ULiveLinkRole>
UMovieSceneLiveLinkSubSection = {}

---@return UMovieSceneLiveLinkSubSection
function UMovieSceneLiveLinkSubSection:get() end



---@class UMovieSceneLiveLinkSubSectionAnimation : UMovieSceneLiveLinkSubSection
UMovieSceneLiveLinkSubSectionAnimation = {}

---@return UMovieSceneLiveLinkSubSectionAnimation
function UMovieSceneLiveLinkSubSectionAnimation:get() end


---@class UMovieSceneLiveLinkSubSectionBasicRole : UMovieSceneLiveLinkSubSection
UMovieSceneLiveLinkSubSectionBasicRole = {}

---@return UMovieSceneLiveLinkSubSectionBasicRole
function UMovieSceneLiveLinkSubSectionBasicRole:get() end


---@class UMovieSceneLiveLinkSubSectionProperties : UMovieSceneLiveLinkSubSection
UMovieSceneLiveLinkSubSectionProperties = {}

---@return UMovieSceneLiveLinkSubSectionProperties
function UMovieSceneLiveLinkSubSectionProperties:get() end


---@class UMovieSceneLiveLinkTrack : UMovieScenePropertyTrack
---@field TrackRole TSubclassOf<ULiveLinkRole>
UMovieSceneLiveLinkTrack = {}

---@return UMovieSceneLiveLinkTrack
function UMovieSceneLiveLinkTrack:get() end



