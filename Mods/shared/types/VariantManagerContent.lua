---@meta

---@class ALevelVariantSetsActor : AActor
---@field LevelVariantSets FSoftObjectPath
---@field DirectorInstances TMap<TObjectPtr<UClass>, ULevelVariantSetsFunctionDirector>
ALevelVariantSetsActor = {}

---@return ALevelVariantSetsActor
function ALevelVariantSetsActor:get() end

---@param VariantSetName FString
---@param VariantName FString
---@return boolean
function ALevelVariantSetsActor:SwitchOnVariantByName(VariantSetName, VariantName) end
---@param VariantSetIndex int32
---@param VariantIndex int32
---@return boolean
function ALevelVariantSetsActor:SwitchOnVariantByIndex(VariantSetIndex, VariantIndex) end
---@param InVariantSets ULevelVariantSets
function ALevelVariantSetsActor:SetLevelVariantSets(InVariantSets) end
---@param bLoad boolean
---@return ULevelVariantSets
function ALevelVariantSetsActor:GetLevelVariantSets(bLoad) end


---@class ASwitchActor : AActor
---@field SceneComponent USceneComponent
---@field LastSelectedOption int32
ASwitchActor = {}

---@return ASwitchActor
function ASwitchActor:get() end

---@param OptionIndex int32
function ASwitchActor:SelectOption(OptionIndex) end
---@return int32
function ASwitchActor:GetSelectedOption() end
---@return TArray<AActor>
function ASwitchActor:GetOptions() end


---@class FCapturedPropSegment
---@field PropertyName FString
---@field PropertyIndex int32
---@field ComponentName FString
FCapturedPropSegment = {}

---@return FCapturedPropSegment
function FCapturedPropSegment:get() end



---@class FFunctionCaller
---@field FunctionName FName
FFunctionCaller = {}

---@return FFunctionCaller
function FFunctionCaller:get() end



---@class FVariantDependency
---@field VariantSet TSoftObjectPtr<UVariantSet>
---@field Variant TSoftObjectPtr<UVariant>
---@field bEnabled boolean
FVariantDependency = {}

---@return FVariantDependency
function FVariantDependency:get() end



---@class ULevelVariantSets : UObject
---@field DirectorClass TObjectPtr<UClass>
---@field VariantSets TArray<UVariantSet>
ULevelVariantSets = {}

---@return ULevelVariantSets
function ULevelVariantSets:get() end

---@param VariantSetName FString
---@return UVariantSet
function ULevelVariantSets:GetVariantSetByName(VariantSetName) end
---@param VariantSetIndex int32
---@return UVariantSet
function ULevelVariantSets:GetVariantSet(VariantSetIndex) end
---@return int32
function ULevelVariantSets:GetNumVariantSets() end


---@class ULevelVariantSetsFunctionDirector : UObject
ULevelVariantSetsFunctionDirector = {}

---@return ULevelVariantSetsFunctionDirector
function ULevelVariantSetsFunctionDirector:get() end


---@class UPropertyValue : UObject
---@field Properties TArray<TFieldPath<FProperty>>
---@field PropertyIndices TArray<int32>
---@field CapturedPropSegments TArray<FCapturedPropSegment>
---@field FullDisplayString FString
---@field PropertySetterName FName
---@field PropertySetterParameterDefaults TMap<FString, FString>
---@field bHasRecordedData boolean
---@field LeafPropertyClass TObjectPtr<UClass>
---@field ValueBytes TArray<uint8>
---@field PropCategory EPropertyValueCategory
UPropertyValue = {}

---@return UPropertyValue
function UPropertyValue:get() end

---@return boolean
function UPropertyValue:HasRecordedData() end
---@return FText
function UPropertyValue:GetPropertyTooltip() end
---@return FString
function UPropertyValue:GetFullDisplayString() end


---@class UPropertyValueColor : UPropertyValue
UPropertyValueColor = {}

---@return UPropertyValueColor
function UPropertyValueColor:get() end


---@class UPropertyValueMaterial : UPropertyValue
UPropertyValueMaterial = {}

---@return UPropertyValueMaterial
function UPropertyValueMaterial:get() end


---@class UPropertyValueOption : UPropertyValue
UPropertyValueOption = {}

---@return UPropertyValueOption
function UPropertyValueOption:get() end


---@class UPropertyValueSoftObject : UPropertyValue
UPropertyValueSoftObject = {}

---@return UPropertyValueSoftObject
function UPropertyValueSoftObject:get() end


---@class UPropertyValueTransform : UPropertyValue
UPropertyValueTransform = {}

---@return UPropertyValueTransform
function UPropertyValueTransform:get() end


---@class UPropertyValueVisibility : UPropertyValue
UPropertyValueVisibility = {}

---@return UPropertyValueVisibility
function UPropertyValueVisibility:get() end


---@class UVariant : UObject
---@field Dependencies TArray<FVariantDependency>
---@field DisplayText FText
---@field ObjectBindings TArray<UVariantObjectBinding>
---@field Thumbnail UTexture2D
UVariant = {}

---@return UVariant
function UVariant:get() end

function UVariant:SwitchOn() end
---@param NewThumbnail UTexture2D
function UVariant:SetThumbnailFromTexture(NewThumbnail) end
---@param FilePath FString
function UVariant:SetThumbnailFromFile(FilePath) end
function UVariant:SetThumbnailFromEditorViewport() end
---@param WorldContextObject UObject
---@param CameraTransform FTransform
---@param FOVDegrees float
---@param MinZ float
---@param Gamma float
function UVariant:SetThumbnailFromCamera(WorldContextObject, CameraTransform, FOVDegrees, MinZ, Gamma) end
---@param NewDisplayText FText
function UVariant:SetDisplayText(NewDisplayText) end
---@param Index int32
---@param Dependency FVariantDependency
function UVariant:SetDependency(Index, Dependency) end
---@return boolean
function UVariant:IsActive() end
---@return UTexture2D
function UVariant:GetThumbnail() end
---@return UVariantSet
function UVariant:GetParent() end
---@return int32
function UVariant:GetNumDependencies() end
---@return int32
function UVariant:GetNumActors() end
---@return FText
function UVariant:GetDisplayText() end
---@param LevelVariantSets ULevelVariantSets
---@param bOnlyEnabledDependencies boolean
---@return TArray<UVariant>
function UVariant:GetDependents(LevelVariantSets, bOnlyEnabledDependencies) end
---@param Index int32
---@return FVariantDependency
function UVariant:GetDependency(Index) end
---@param ActorIndex int32
---@return AActor
function UVariant:GetActor(ActorIndex) end
---@param Index int32
function UVariant:DeleteDependency(Index) end
---@param Dependency FVariantDependency
---@return int32
function UVariant:AddDependency(Dependency) end


---@class UVariantObjectBinding : UObject
---@field CachedActorLabel FString
---@field ObjectPtr FSoftObjectPath
---@field LazyObjectPtr TLazyObjectPtr<UObject>
---@field CapturedProperties TArray<UPropertyValue>
---@field FunctionCallers TArray<FFunctionCaller>
UVariantObjectBinding = {}

---@return UVariantObjectBinding
function UVariantObjectBinding:get() end



---@class UVariantSet : UObject
---@field DisplayText FText
---@field bExpanded boolean
---@field Variants TArray<UVariant>
---@field Thumbnail UTexture2D
UVariantSet = {}

---@return UVariantSet
function UVariantSet:get() end

---@param NewThumbnail UTexture2D
function UVariantSet:SetThumbnailFromTexture(NewThumbnail) end
---@param FilePath FString
function UVariantSet:SetThumbnailFromFile(FilePath) end
function UVariantSet:SetThumbnailFromEditorViewport() end
---@param WorldContextObject UObject
---@param CameraTransform FTransform
---@param FOVDegrees float
---@param MinZ float
---@param Gamma float
function UVariantSet:SetThumbnailFromCamera(WorldContextObject, CameraTransform, FOVDegrees, MinZ, Gamma) end
---@param NewDisplayText FText
function UVariantSet:SetDisplayText(NewDisplayText) end
---@param VariantName FString
---@return UVariant
function UVariantSet:GetVariantByName(VariantName) end
---@param VariantIndex int32
---@return UVariant
function UVariantSet:GetVariant(VariantIndex) end
---@return UTexture2D
function UVariantSet:GetThumbnail() end
---@return ULevelVariantSets
function UVariantSet:GetParent() end
---@return int32
function UVariantSet:GetNumVariants() end
---@return FText
function UVariantSet:GetDisplayText() end


