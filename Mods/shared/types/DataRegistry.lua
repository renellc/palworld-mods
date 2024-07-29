---@meta

---@class FDataRegistryCachePolicy
---@field bCacheIsAlwaysVolatile boolean
---@field bUseCurveTableCacheVersion boolean
---@field MinNumberKept int32
---@field MaxNumberKept int32
---@field ForceKeepSeconds float
---@field ForceReleaseSeconds float
FDataRegistryCachePolicy = {}

---@return FDataRegistryCachePolicy
function FDataRegistryCachePolicy:get() end



---@class FDataRegistryId
---@field RegistryType FDataRegistryType
---@field ItemName FName
FDataRegistryId = {}

---@return FDataRegistryId
function FDataRegistryId:get() end



---@class FDataRegistryIdFormat
---@field BaseGameplayTag FGameplayTag
FDataRegistryIdFormat = {}

---@return FDataRegistryIdFormat
function FDataRegistryIdFormat:get() end



---@class FDataRegistryLookup
FDataRegistryLookup = {}

---@return FDataRegistryLookup
function FDataRegistryLookup:get() end


---@class FDataRegistrySourceItemId
FDataRegistrySourceItemId = {}

---@return FDataRegistrySourceItemId
function FDataRegistrySourceItemId:get() end


---@class FDataRegistrySource_DataTableRules
---@field bPrecacheTable boolean
---@field CachedTableKeepSeconds float
FDataRegistrySource_DataTableRules = {}

---@return FDataRegistrySource_DataTableRules
function FDataRegistrySource_DataTableRules:get() end



---@class FDataRegistryType
---@field Name FName
FDataRegistryType = {}

---@return FDataRegistryType
function FDataRegistryType:get() end



---@class UDataRegistry : UObject
---@field RegistryType FName
---@field IdFormat FDataRegistryIdFormat
---@field ItemStruct UScriptStruct
---@field DataSources TArray<UDataRegistrySource>
---@field RuntimeSources TArray<UDataRegistrySource>
---@field TimerUpdateFrequency float
---@field DefaultCachePolicy FDataRegistryCachePolicy
UDataRegistry = {}

---@return UDataRegistry
function UDataRegistry:get() end



---@class UDataRegistrySettings : UDeveloperSettings
---@field DirectoriesToScan TArray<FDirectoryPath>
---@field bInitializeAllLoadedRegistries boolean
---@field bIgnoreMissingCookedAssetRegistryData boolean
UDataRegistrySettings = {}

---@return UDataRegistrySettings
function UDataRegistrySettings:get() end



---@class UDataRegistrySource : UObject
---@field ParentSource UDataRegistrySource
UDataRegistrySource = {}

---@return UDataRegistrySource
function UDataRegistrySource:get() end



---@class UDataRegistrySource_CurveTable : UDataRegistrySource
---@field SourceTable TSoftObjectPtr<UCurveTable>
---@field TableRules FDataRegistrySource_DataTableRules
---@field CachedTable UCurveTable
---@field PreloadTable UCurveTable
UDataRegistrySource_CurveTable = {}

---@return UDataRegistrySource_CurveTable
function UDataRegistrySource_CurveTable:get() end



---@class UDataRegistrySource_DataTable : UDataRegistrySource
---@field SourceTable TSoftObjectPtr<UDataTable>
---@field TableRules FDataRegistrySource_DataTableRules
---@field CachedTable UDataTable
---@field PreloadTable UDataTable
UDataRegistrySource_DataTable = {}

---@return UDataRegistrySource_DataTable
function UDataRegistrySource_DataTable:get() end



---@class UDataRegistrySubsystem : UEngineSubsystem
UDataRegistrySubsystem = {}

---@return UDataRegistrySubsystem
function UDataRegistrySubsystem:get() end

---@param A FDataRegistryType
---@param B FDataRegistryType
---@return boolean
function UDataRegistrySubsystem:NotEqual_DataRegistryType(A, B) end
---@param A FDataRegistryId
---@param B FDataRegistryId
---@return boolean
function UDataRegistrySubsystem:NotEqual_DataRegistryId(A, B) end
---@param DataRegistryType FDataRegistryType
---@return boolean
function UDataRegistrySubsystem:IsValidDataRegistryType(DataRegistryType) end
---@param DataRegistryId FDataRegistryId
---@return boolean
function UDataRegistrySubsystem:IsValidDataRegistryId(DataRegistryId) end
---@param ItemId FDataRegistryId
---@param ResolvedLookup FDataRegistryLookup
---@param OutItem FTableRowBase
---@return boolean
function UDataRegistrySubsystem:GetCachedItemFromLookupBP(ItemId, ResolvedLookup, OutItem) end
---@param ItemId FDataRegistryId
---@param OutItem FTableRowBase
---@return boolean
function UDataRegistrySubsystem:GetCachedItemBP(ItemId, OutItem) end
---@param ItemId FDataRegistryId
---@param OutResult EDataRegistrySubsystemGetItemResult
---@param OutItem FTableRowBase
function UDataRegistrySubsystem:FindCachedItemBP(ItemId, OutResult, OutItem) end
---@param ItemId FDataRegistryId
---@param InputValue float
---@param DefaultValue float
---@param OutResult EDataRegistrySubsystemGetItemResult
---@param OutValue float
function UDataRegistrySubsystem:EvaluateDataRegistryCurve(ItemId, InputValue, DefaultValue, OutResult, OutValue) end
---@param A FDataRegistryType
---@param B FDataRegistryType
---@return boolean
function UDataRegistrySubsystem:EqualEqual_DataRegistryType(A, B) end
---@param A FDataRegistryId
---@param B FDataRegistryId
---@return boolean
function UDataRegistrySubsystem:EqualEqual_DataRegistryId(A, B) end
---@param DataRegistryType FDataRegistryType
---@return FString
function UDataRegistrySubsystem:Conv_DataRegistryTypeToString(DataRegistryType) end
---@param DataRegistryId FDataRegistryId
---@return FString
function UDataRegistrySubsystem:Conv_DataRegistryIdToString(DataRegistryId) end
---@param ItemId FDataRegistryId
---@param AcquireCallback FAcquireItemBPAcquireCallback
---@return boolean
function UDataRegistrySubsystem:AcquireItemBP(ItemId, AcquireCallback) end


---@class UMetaDataRegistrySource : UDataRegistrySource
---@field AssetUsage EMetaDataRegistrySourceAssetUsage
---@field SearchRules FAssetManagerSearchRules
---@field RuntimeChildren TMap<FName, UDataRegistrySource>
UMetaDataRegistrySource = {}

---@return UMetaDataRegistrySource
function UMetaDataRegistrySource:get() end



---@class UMetaDataRegistrySource_CurveTable : UMetaDataRegistrySource
---@field CreatedSource TSubclassOf<UDataRegistrySource_CurveTable>
---@field TableRules FDataRegistrySource_DataTableRules
UMetaDataRegistrySource_CurveTable = {}

---@return UMetaDataRegistrySource_CurveTable
function UMetaDataRegistrySource_CurveTable:get() end



---@class UMetaDataRegistrySource_DataTable : UMetaDataRegistrySource
---@field CreatedSource TSubclassOf<UDataRegistrySource_DataTable>
---@field TableRules FDataRegistrySource_DataTableRules
UMetaDataRegistrySource_DataTable = {}

---@return UMetaDataRegistrySource_DataTable
function UMetaDataRegistrySource_DataTable:get() end



