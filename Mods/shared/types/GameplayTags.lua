---@meta

---@class FGameplayTag
---@field TagName FName
FGameplayTag = {}

---@return FGameplayTag
function FGameplayTag:get() end



---@class FGameplayTagCategoryRemap
---@field BaseCategory FString
---@field RemapCategories TArray<FString>
FGameplayTagCategoryRemap = {}

---@return FGameplayTagCategoryRemap
function FGameplayTagCategoryRemap:get() end



---@class FGameplayTagContainer
---@field GameplayTags TArray<FGameplayTag>
---@field ParentTags TArray<FGameplayTag>
FGameplayTagContainer = {}

---@return FGameplayTagContainer
function FGameplayTagContainer:get() end



---@class FGameplayTagContainerNetSerializerConfig : FNetSerializerConfig
FGameplayTagContainerNetSerializerConfig = {}

---@return FGameplayTagContainerNetSerializerConfig
function FGameplayTagContainerNetSerializerConfig:get() end


---@class FGameplayTagContainerNetSerializerSerializationHelper
---@field GameplayTags TArray<FGameplayTag>
FGameplayTagContainerNetSerializerSerializationHelper = {}

---@return FGameplayTagContainerNetSerializerSerializationHelper
function FGameplayTagContainerNetSerializerSerializationHelper:get() end



---@class FGameplayTagCreationWidgetHelper
FGameplayTagCreationWidgetHelper = {}

---@return FGameplayTagCreationWidgetHelper
function FGameplayTagCreationWidgetHelper:get() end


---@class FGameplayTagNetSerializerConfig : FNetSerializerConfig
FGameplayTagNetSerializerConfig = {}

---@return FGameplayTagNetSerializerConfig
function FGameplayTagNetSerializerConfig:get() end


---@class FGameplayTagNode
FGameplayTagNode = {}

---@return FGameplayTagNode
function FGameplayTagNode:get() end


---@class FGameplayTagQuery
---@field TokenStreamVersion int32
---@field TagDictionary TArray<FGameplayTag>
---@field QueryTokenStream TArray<uint8>
---@field UserDescription FString
---@field AutoDescription FString
FGameplayTagQuery = {}

---@return FGameplayTagQuery
function FGameplayTagQuery:get() end



---@class FGameplayTagRedirect
---@field OldTagName FName
---@field NewTagName FName
FGameplayTagRedirect = {}

---@return FGameplayTagRedirect
function FGameplayTagRedirect:get() end



---@class FGameplayTagReferenceHelper
FGameplayTagReferenceHelper = {}

---@return FGameplayTagReferenceHelper
function FGameplayTagReferenceHelper:get() end


---@class FGameplayTagSource
---@field SourceName FName
---@field SourceType EGameplayTagSourceType
---@field SourceTagList UGameplayTagsList
---@field SourceRestrictedTagList URestrictedGameplayTagsList
FGameplayTagSource = {}

---@return FGameplayTagSource
function FGameplayTagSource:get() end



---@class FGameplayTagTableRow : FTableRowBase
---@field Tag FName
---@field DevComment FString
FGameplayTagTableRow = {}

---@return FGameplayTagTableRow
function FGameplayTagTableRow:get() end



---@class FRestrictedConfigInfo
---@field RestrictedConfigName FString
---@field Owners TArray<FString>
FRestrictedConfigInfo = {}

---@return FRestrictedConfigInfo
function FRestrictedConfigInfo:get() end



---@class FRestrictedGameplayTagTableRow : FGameplayTagTableRow
---@field bAllowNonRestrictedChildren boolean
FRestrictedGameplayTagTableRow = {}

---@return FRestrictedGameplayTagTableRow
function FRestrictedGameplayTagTableRow:get() end



---@class IGameplayTagAssetInterface : IInterface
IGameplayTagAssetInterface = {}

---@return IGameplayTagAssetInterface
function IGameplayTagAssetInterface:get() end

---@param TagToCheck FGameplayTag
---@return boolean
function IGameplayTagAssetInterface:HasMatchingGameplayTag(TagToCheck) end
---@param TagContainer FGameplayTagContainer
---@return boolean
function IGameplayTagAssetInterface:HasAnyMatchingGameplayTags(TagContainer) end
---@param TagContainer FGameplayTagContainer
---@return boolean
function IGameplayTagAssetInterface:HasAllMatchingGameplayTags(TagContainer) end
---@param TagContainer FGameplayTagContainer
function IGameplayTagAssetInterface:GetOwnedGameplayTags(TagContainer) end


---@class UBlueprintGameplayTagLibrary : UBlueprintFunctionLibrary
UBlueprintGameplayTagLibrary = {}

---@return UBlueprintGameplayTagLibrary
function UBlueprintGameplayTagLibrary:get() end

---@param TagContainer FGameplayTagContainer
---@param Tag FGameplayTag
---@return boolean
function UBlueprintGameplayTagLibrary:RemoveGameplayTag(TagContainer, Tag) end
---@param A FGameplayTag
---@param B FString
---@return boolean
function UBlueprintGameplayTagLibrary:NotEqual_TagTag(A, B) end
---@param A FGameplayTagContainer
---@param B FString
---@return boolean
function UBlueprintGameplayTagLibrary:NotEqual_TagContainerTagContainer(A, B) end
---@param A FGameplayTagContainer
---@param B FGameplayTagContainer
---@return boolean
function UBlueprintGameplayTagLibrary:NotEqual_GameplayTagContainer(A, B) end
---@param A FGameplayTag
---@param B FGameplayTag
---@return boolean
function UBlueprintGameplayTagLibrary:NotEqual_GameplayTag(A, B) end
---@param TagOne FGameplayTag
---@param TagTwo FGameplayTag
---@param bExactMatch boolean
---@return boolean
function UBlueprintGameplayTagLibrary:MatchesTag(TagOne, TagTwo, bExactMatch) end
---@param TagOne FGameplayTag
---@param OtherContainer FGameplayTagContainer
---@param bExactMatch boolean
---@return boolean
function UBlueprintGameplayTagLibrary:MatchesAnyTags(TagOne, OtherContainer, bExactMatch) end
---@param Value FGameplayTagContainer
---@return FGameplayTagContainer
function UBlueprintGameplayTagLibrary:MakeLiteralGameplayTagContainer(Value) end
---@param Value FGameplayTag
---@return FGameplayTag
function UBlueprintGameplayTagLibrary:MakeLiteralGameplayTag(Value) end
---@param TagQuery FGameplayTagQuery
---@return FGameplayTagQuery
function UBlueprintGameplayTagLibrary:MakeGameplayTagQuery(TagQuery) end
---@param SingleTag FGameplayTag
---@return FGameplayTagContainer
function UBlueprintGameplayTagLibrary:MakeGameplayTagContainerFromTag(SingleTag) end
---@param GameplayTags TArray<FGameplayTag>
---@return FGameplayTagContainer
function UBlueprintGameplayTagLibrary:MakeGameplayTagContainerFromArray(GameplayTags) end
---@param TagQuery FGameplayTagQuery
---@return boolean
function UBlueprintGameplayTagLibrary:IsTagQueryEmpty(TagQuery) end
---@param GameplayTag FGameplayTag
---@return boolean
function UBlueprintGameplayTagLibrary:IsGameplayTagValid(GameplayTag) end
---@param TagContainer FGameplayTagContainer
---@param Tag FGameplayTag
---@param bExactMatch boolean
---@return boolean
function UBlueprintGameplayTagLibrary:HasTag(TagContainer, Tag, bExactMatch) end
---@param TagContainer FGameplayTagContainer
---@param OtherContainer FGameplayTagContainer
---@param bExactMatch boolean
---@return boolean
function UBlueprintGameplayTagLibrary:HasAnyTags(TagContainer, OtherContainer, bExactMatch) end
---@param TagContainer FGameplayTagContainer
---@param OtherContainer FGameplayTagContainer
---@param bExactMatch boolean
---@return boolean
function UBlueprintGameplayTagLibrary:HasAllTags(TagContainer, OtherContainer, bExactMatch) end
---@param TagContainerInterface TScriptInterface<IGameplayTagAssetInterface>
---@param OtherContainer FGameplayTagContainer
---@return boolean
function UBlueprintGameplayTagLibrary:HasAllMatchingGameplayTags(TagContainerInterface, OtherContainer) end
---@param GameplayTag FGameplayTag
---@return FName
function UBlueprintGameplayTagLibrary:GetTagName(GameplayTag) end
---@param TagContainer FGameplayTagContainer
---@return int32
function UBlueprintGameplayTagLibrary:GetNumGameplayTagsInContainer(TagContainer) end
---@param TagContainer FGameplayTagContainer
---@return FString
function UBlueprintGameplayTagLibrary:GetDebugStringFromGameplayTagContainer(TagContainer) end
---@param GameplayTag FGameplayTag
---@return FString
function UBlueprintGameplayTagLibrary:GetDebugStringFromGameplayTag(GameplayTag) end
---@param WorldContextObject UObject
---@param actorClass TSubclassOf<AActor>
---@param GameplayTagQuery FGameplayTagQuery
---@param OutActors TArray<AActor>
function UBlueprintGameplayTagLibrary:GetAllActorsOfClassMatchingTagQuery(WorldContextObject, actorClass, GameplayTagQuery, OutActors) end
---@param A FGameplayTagContainer
---@param B FGameplayTagContainer
---@return boolean
function UBlueprintGameplayTagLibrary:EqualEqual_GameplayTagContainer(A, B) end
---@param A FGameplayTag
---@param B FGameplayTag
---@return boolean
function UBlueprintGameplayTagLibrary:EqualEqual_GameplayTag(A, B) end
---@param TagContainerInterface TScriptInterface<IGameplayTagAssetInterface>
---@param Tag FGameplayTag
---@return boolean
function UBlueprintGameplayTagLibrary:DoesTagAssetInterfaceHaveTag(TagContainerInterface, Tag) end
---@param TagContainer FGameplayTagContainer
---@param TagQuery FGameplayTagQuery
---@return boolean
function UBlueprintGameplayTagLibrary:DoesContainerMatchTagQuery(TagContainer, TagQuery) end
---@param GameplayTagContainer FGameplayTagContainer
---@param GameplayTags TArray<FGameplayTag>
function UBlueprintGameplayTagLibrary:BreakGameplayTagContainer(GameplayTagContainer, GameplayTags) end
---@param InOutTagContainer FGameplayTagContainer
---@param InTagContainer FGameplayTagContainer
function UBlueprintGameplayTagLibrary:AppendGameplayTagContainers(InOutTagContainer, InTagContainer) end
---@param TagContainer FGameplayTagContainer
---@param Tag FGameplayTag
function UBlueprintGameplayTagLibrary:AddGameplayTag(TagContainer, Tag) end


---@class UEditableGameplayTagQuery : UObject
---@field UserDescription FString
---@field RootExpression UEditableGameplayTagQueryExpression
---@field TagQueryExportText_Helper FGameplayTagQuery
UEditableGameplayTagQuery = {}

---@return UEditableGameplayTagQuery
function UEditableGameplayTagQuery:get() end



---@class UEditableGameplayTagQueryExpression : UObject
UEditableGameplayTagQueryExpression = {}

---@return UEditableGameplayTagQueryExpression
function UEditableGameplayTagQueryExpression:get() end


---@class UEditableGameplayTagQueryExpression_AllExprMatch : UEditableGameplayTagQueryExpression
---@field Expressions TArray<UEditableGameplayTagQueryExpression>
UEditableGameplayTagQueryExpression_AllExprMatch = {}

---@return UEditableGameplayTagQueryExpression_AllExprMatch
function UEditableGameplayTagQueryExpression_AllExprMatch:get() end



---@class UEditableGameplayTagQueryExpression_AllTagsMatch : UEditableGameplayTagQueryExpression
---@field Tags FGameplayTagContainer
UEditableGameplayTagQueryExpression_AllTagsMatch = {}

---@return UEditableGameplayTagQueryExpression_AllTagsMatch
function UEditableGameplayTagQueryExpression_AllTagsMatch:get() end



---@class UEditableGameplayTagQueryExpression_AnyExprMatch : UEditableGameplayTagQueryExpression
---@field Expressions TArray<UEditableGameplayTagQueryExpression>
UEditableGameplayTagQueryExpression_AnyExprMatch = {}

---@return UEditableGameplayTagQueryExpression_AnyExprMatch
function UEditableGameplayTagQueryExpression_AnyExprMatch:get() end



---@class UEditableGameplayTagQueryExpression_AnyTagsMatch : UEditableGameplayTagQueryExpression
---@field Tags FGameplayTagContainer
UEditableGameplayTagQueryExpression_AnyTagsMatch = {}

---@return UEditableGameplayTagQueryExpression_AnyTagsMatch
function UEditableGameplayTagQueryExpression_AnyTagsMatch:get() end



---@class UEditableGameplayTagQueryExpression_NoExprMatch : UEditableGameplayTagQueryExpression
---@field Expressions TArray<UEditableGameplayTagQueryExpression>
UEditableGameplayTagQueryExpression_NoExprMatch = {}

---@return UEditableGameplayTagQueryExpression_NoExprMatch
function UEditableGameplayTagQueryExpression_NoExprMatch:get() end



---@class UEditableGameplayTagQueryExpression_NoTagsMatch : UEditableGameplayTagQueryExpression
---@field Tags FGameplayTagContainer
UEditableGameplayTagQueryExpression_NoTagsMatch = {}

---@return UEditableGameplayTagQueryExpression_NoTagsMatch
function UEditableGameplayTagQueryExpression_NoTagsMatch:get() end



---@class UGameplayTagsDeveloperSettings : UDeveloperSettings
---@field DeveloperConfigName FString
---@field FavoriteTagSource FName
UGameplayTagsDeveloperSettings = {}

---@return UGameplayTagsDeveloperSettings
function UGameplayTagsDeveloperSettings:get() end



---@class UGameplayTagsList : UObject
---@field ConfigFileName FString
---@field GameplayTagList TArray<FGameplayTagTableRow>
UGameplayTagsList = {}

---@return UGameplayTagsList
function UGameplayTagsList:get() end



---@class UGameplayTagsManager : UObject
---@field TagSources TMap<FName, FGameplayTagSource>
---@field GameplayTagTables TArray<UDataTable>
UGameplayTagsManager = {}

---@return UGameplayTagsManager
function UGameplayTagsManager:get() end



---@class UGameplayTagsSettings : UGameplayTagsList
---@field ImportTagsFromConfig boolean
---@field WarnOnInvalidTags boolean
---@field ClearInvalidTags boolean
---@field AllowEditorTagUnloading boolean
---@field AllowGameTagUnloading boolean
---@field FastReplication boolean
---@field InvalidTagCharacters FString
---@field CategoryRemapping TArray<FGameplayTagCategoryRemap>
---@field GameplayTagTableList TArray<FSoftObjectPath>
---@field GameplayTagRedirects TArray<FGameplayTagRedirect>
---@field CommonlyReplicatedTags TArray<FName>
---@field NumBitsForContainerSize int32
---@field NetIndexFirstBitSegment int32
---@field RestrictedConfigFiles TArray<FRestrictedConfigInfo>
UGameplayTagsSettings = {}

---@return UGameplayTagsSettings
function UGameplayTagsSettings:get() end



---@class URestrictedGameplayTagsList : UObject
---@field ConfigFileName FString
---@field RestrictedGameplayTagList TArray<FRestrictedGameplayTagTableRow>
URestrictedGameplayTagsList = {}

---@return URestrictedGameplayTagsList
function URestrictedGameplayTagsList:get() end



