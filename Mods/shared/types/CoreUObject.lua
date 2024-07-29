---@meta

---@class FARFilter
---@field PackageNames TArray<FName>
---@field PackagePaths TArray<FName>
---@field SoftObjectPaths TArray<FSoftObjectPath>
---@field ClassNames TArray<FName>
---@field ClassPaths TArray<FTopLevelAssetPath>
---@field RecursiveClassesExclusionSet TSet<FName>
---@field RecursiveClassPathsExclusionSet TSet<FTopLevelAssetPath>
---@field bRecursivePaths boolean
---@field bRecursiveClasses boolean
---@field bIncludeOnlyOnDiskAssets boolean
FARFilter = {}

---@return FARFilter
function FARFilter:get() end



---@class FAssetBundleData
---@field Bundles TArray<FAssetBundleEntry>
FAssetBundleData = {}

---@return FAssetBundleData
function FAssetBundleData:get() end



---@class FAssetBundleEntry
---@field BundleName FName
---@field AssetPaths TArray<FTopLevelAssetPath>
FAssetBundleEntry = {}

---@return FAssetBundleEntry
function FAssetBundleEntry:get() end



---@class FAssetData
---@field PackageName FName
---@field PackagePath FName
---@field AssetName FName
---@field AssetClass FName
---@field AssetClassPath FTopLevelAssetPath
FAssetData = {}

---@return FAssetData
function FAssetData:get() end



---@class FAutomationEvent
---@field Type EAutomationEventType
---@field Message FString
---@field Context FString
---@field Artifact FGuid
FAutomationEvent = {}

---@return FAutomationEvent
function FAutomationEvent:get() end



---@class FAutomationExecutionEntry
---@field Event FAutomationEvent
---@field Filename FString
---@field LineNumber int32
---@field Timestamp FDateTime
FAutomationExecutionEntry = {}

---@return FAutomationExecutionEntry
function FAutomationExecutionEntry:get() end



---@class FBox
---@field Min FVector
---@field Max FVector
---@field IsValid uint8
FBox = {}

---@return FBox
function FBox:get() end



---@class FBox2D
---@field Min FVector2D
---@field Max FVector2D
---@field bIsValid uint8
FBox2D = {}

---@return FBox2D
function FBox2D:get() end



---@class FBox2f
---@field Min FVector2f
---@field Max FVector2f
---@field bIsValid uint8
FBox2f = {}

---@return FBox2f
function FBox2f:get() end



---@class FBox3d
---@field Min FVector3d
---@field Max FVector3d
---@field IsValid uint8
FBox3d = {}

---@return FBox3d
function FBox3d:get() end



---@class FBox3f
---@field Min FVector3f
---@field Max FVector3f
---@field IsValid uint8
FBox3f = {}

---@return FBox3f
function FBox3f:get() end



---@class FBoxSphereBounds
---@field Origin FVector
---@field BoxExtent FVector
---@field SphereRadius double
FBoxSphereBounds = {}

---@return FBoxSphereBounds
function FBoxSphereBounds:get() end



---@class FBoxSphereBounds3d
---@field Origin FVector3d
---@field BoxExtent FVector3d
---@field SphereRadius double
FBoxSphereBounds3d = {}

---@return FBoxSphereBounds3d
function FBoxSphereBounds3d:get() end



---@class FBoxSphereBounds3f
---@field Origin FVector3f
---@field BoxExtent FVector3f
---@field SphereRadius float
FBoxSphereBounds3f = {}

---@return FBoxSphereBounds3f
function FBoxSphereBounds3f:get() end



---@class FColor
---@field B uint8
---@field G uint8
---@field R uint8
---@field A uint8
FColor = {}

---@return FColor
function FColor:get() end



---@class FDateTime
FDateTime = {}

---@return FDateTime
function FDateTime:get() end


---@class FDefault__ScriptStruct
FDefault__ScriptStruct = {}

---@return FDefault__ScriptStruct
function FDefault__ScriptStruct:get() end


---@class FDirectoryPath
---@field Path FString
FDirectoryPath = {}

---@return FDirectoryPath
function FDirectoryPath:get() end



---@class FDoubleRange
---@field LowerBound FDoubleRangeBound
---@field UpperBound FDoubleRangeBound
FDoubleRange = {}

---@return FDoubleRange
function FDoubleRange:get() end



---@class FDoubleRangeBound
---@field Type ERangeBoundTypes::Type
---@field Value double
FDoubleRangeBound = {}

---@return FDoubleRangeBound
function FDoubleRangeBound:get() end



---@class FFallbackStruct
FFallbackStruct = {}

---@return FFallbackStruct
function FFallbackStruct:get() end


---@class FFilePath
---@field FilePath FString
FFilePath = {}

---@return FFilePath
function FFilePath:get() end



---@class FFloatInterval
---@field Min float
---@field Max float
FFloatInterval = {}

---@return FFloatInterval
function FFloatInterval:get() end



---@class FFloatRange
---@field LowerBound FFloatRangeBound
---@field UpperBound FFloatRangeBound
FFloatRange = {}

---@return FFloatRange
function FFloatRange:get() end



---@class FFloatRangeBound
---@field Type ERangeBoundTypes::Type
---@field Value float
FFloatRangeBound = {}

---@return FFloatRangeBound
function FFloatRangeBound:get() end



---@class FFrameNumber
---@field Value int32
FFrameNumber = {}

---@return FFrameNumber
function FFrameNumber:get() end



---@class FFrameNumberRange
---@field LowerBound FFrameNumberRangeBound
---@field UpperBound FFrameNumberRangeBound
FFrameNumberRange = {}

---@return FFrameNumberRange
function FFrameNumberRange:get() end



---@class FFrameNumberRangeBound
---@field Type ERangeBoundTypes::Type
---@field Value FFrameNumber
FFrameNumberRangeBound = {}

---@return FFrameNumberRangeBound
function FFrameNumberRangeBound:get() end



---@class FFrameRate
---@field Numerator int32
---@field Denominator int32
FFrameRate = {}

---@return FFrameRate
function FFrameRate:get() end



---@class FFrameTime
---@field FrameNumber FFrameNumber
---@field SubFrame float
FFrameTime = {}

---@return FFrameTime
function FFrameTime:get() end



---@class FGuid
---@field A int32
---@field B int32
---@field C int32
---@field D int32
FGuid = {}

---@return FGuid
function FGuid:get() end



---@class FInputDeviceId
---@field InternalId int32
FInputDeviceId = {}

---@return FInputDeviceId
function FInputDeviceId:get() end



---@class FInt32Interval
---@field Min int32
---@field Max int32
FInt32Interval = {}

---@return FInt32Interval
function FInt32Interval:get() end



---@class FInt32Point
---@field X int32
---@field Y int32
FInt32Point = {}

---@return FInt32Point
function FInt32Point:get() end



---@class FInt32Range
---@field LowerBound FInt32RangeBound
---@field UpperBound FInt32RangeBound
FInt32Range = {}

---@return FInt32Range
function FInt32Range:get() end



---@class FInt32RangeBound
---@field Type ERangeBoundTypes::Type
---@field Value int32
FInt32RangeBound = {}

---@return FInt32RangeBound
function FInt32RangeBound:get() end



---@class FInt32Vector
---@field X int32
---@field Y int32
---@field Z int32
FInt32Vector = {}

---@return FInt32Vector
function FInt32Vector:get() end



---@class FInt32Vector2
---@field X int32
---@field Y int32
FInt32Vector2 = {}

---@return FInt32Vector2
function FInt32Vector2:get() end



---@class FInt32Vector4
---@field X int32
---@field Y int32
---@field Z int32
---@field W int32
FInt32Vector4 = {}

---@return FInt32Vector4
function FInt32Vector4:get() end



---@class FInt64Point
---@field X int64
---@field Y int64
FInt64Point = {}

---@return FInt64Point
function FInt64Point:get() end



---@class FInt64Vector
---@field X int64
---@field Y int64
---@field Z int64
FInt64Vector = {}

---@return FInt64Vector
function FInt64Vector:get() end



---@class FInt64Vector2
---@field X int64
---@field Y int64
FInt64Vector2 = {}

---@return FInt64Vector2
function FInt64Vector2:get() end



---@class FInt64Vector4
---@field X int64
---@field Y int64
---@field Z int64
---@field W int64
FInt64Vector4 = {}

---@return FInt64Vector4
function FInt64Vector4:get() end



---@class FIntPoint
---@field X int32
---@field Y int32
FIntPoint = {}

---@return FIntPoint
function FIntPoint:get() end



---@class FIntVector
---@field X int32
---@field Y int32
---@field Z int32
FIntVector = {}

---@return FIntVector
function FIntVector:get() end



---@class FIntVector2
---@field X int32
---@field Y int32
FIntVector2 = {}

---@return FIntVector2
function FIntVector2:get() end



---@class FIntVector4
---@field X int32
---@field Y int32
---@field Z int32
---@field W int32
FIntVector4 = {}

---@return FIntVector4
function FIntVector4:get() end



---@class FInterpCurveFloat
---@field Points TArray<FInterpCurvePointFloat>
---@field bIsLooped boolean
---@field LoopKeyOffset float
FInterpCurveFloat = {}

---@return FInterpCurveFloat
function FInterpCurveFloat:get() end



---@class FInterpCurveLinearColor
---@field Points TArray<FInterpCurvePointLinearColor>
---@field bIsLooped boolean
---@field LoopKeyOffset float
FInterpCurveLinearColor = {}

---@return FInterpCurveLinearColor
function FInterpCurveLinearColor:get() end



---@class FInterpCurvePointFloat
---@field InVal float
---@field OutVal float
---@field ArriveTangent float
---@field LeaveTangent float
---@field InterpMode EInterpCurveMode
FInterpCurvePointFloat = {}

---@return FInterpCurvePointFloat
function FInterpCurvePointFloat:get() end



---@class FInterpCurvePointLinearColor
---@field InVal float
---@field OutVal FLinearColor
---@field ArriveTangent FLinearColor
---@field LeaveTangent FLinearColor
---@field InterpMode EInterpCurveMode
FInterpCurvePointLinearColor = {}

---@return FInterpCurvePointLinearColor
function FInterpCurvePointLinearColor:get() end



---@class FInterpCurvePointQuat
---@field InVal float
---@field OutVal FQuat
---@field ArriveTangent FQuat
---@field LeaveTangent FQuat
---@field InterpMode EInterpCurveMode
FInterpCurvePointQuat = {}

---@return FInterpCurvePointQuat
function FInterpCurvePointQuat:get() end



---@class FInterpCurvePointTwoVectors
---@field InVal float
---@field OutVal FTwoVectors
---@field ArriveTangent FTwoVectors
---@field LeaveTangent FTwoVectors
---@field InterpMode EInterpCurveMode
FInterpCurvePointTwoVectors = {}

---@return FInterpCurvePointTwoVectors
function FInterpCurvePointTwoVectors:get() end



---@class FInterpCurvePointVector
---@field InVal float
---@field OutVal FVector
---@field ArriveTangent FVector
---@field LeaveTangent FVector
---@field InterpMode EInterpCurveMode
FInterpCurvePointVector = {}

---@return FInterpCurvePointVector
function FInterpCurvePointVector:get() end



---@class FInterpCurvePointVector2D
---@field InVal float
---@field OutVal FVector2D
---@field ArriveTangent FVector2D
---@field LeaveTangent FVector2D
---@field InterpMode EInterpCurveMode
FInterpCurvePointVector2D = {}

---@return FInterpCurvePointVector2D
function FInterpCurvePointVector2D:get() end



---@class FInterpCurveQuat
---@field Points TArray<FInterpCurvePointQuat>
---@field bIsLooped boolean
---@field LoopKeyOffset float
FInterpCurveQuat = {}

---@return FInterpCurveQuat
function FInterpCurveQuat:get() end



---@class FInterpCurveTwoVectors
---@field Points TArray<FInterpCurvePointTwoVectors>
---@field bIsLooped boolean
---@field LoopKeyOffset float
FInterpCurveTwoVectors = {}

---@return FInterpCurveTwoVectors
function FInterpCurveTwoVectors:get() end



---@class FInterpCurveVector
---@field Points TArray<FInterpCurvePointVector>
---@field bIsLooped boolean
---@field LoopKeyOffset float
FInterpCurveVector = {}

---@return FInterpCurveVector
function FInterpCurveVector:get() end



---@class FInterpCurveVector2D
---@field Points TArray<FInterpCurvePointVector2D>
---@field bIsLooped boolean
---@field LoopKeyOffset float
FInterpCurveVector2D = {}

---@return FInterpCurveVector2D
function FInterpCurveVector2D:get() end



---@class FLinearColor
---@field R float
---@field G float
---@field B float
---@field A float
FLinearColor = {}

---@return FLinearColor
function FLinearColor:get() end



---@class FMatrix
---@field XPlane FPlane
---@field YPlane FPlane
---@field ZPlane FPlane
---@field WPlane FPlane
FMatrix = {}

---@return FMatrix
function FMatrix:get() end



---@class FMatrix44d
---@field XPlane FPlane4d
---@field YPlane FPlane4d
---@field ZPlane FPlane4d
---@field WPlane FPlane4d
FMatrix44d = {}

---@return FMatrix44d
function FMatrix44d:get() end



---@class FMatrix44f
---@field XPlane FPlane4f
---@field YPlane FPlane4f
---@field ZPlane FPlane4f
---@field WPlane FPlane4f
FMatrix44f = {}

---@return FMatrix44f
function FMatrix44f:get() end



---@class FOrientedBox
---@field Center FVector
---@field AxisX FVector
---@field AxisY FVector
---@field AxisZ FVector
---@field ExtentX double
---@field ExtentY double
---@field ExtentZ double
FOrientedBox = {}

---@return FOrientedBox
function FOrientedBox:get() end



---@class FPackedNormal
---@field X uint8
---@field Y uint8
---@field Z uint8
---@field W uint8
FPackedNormal = {}

---@return FPackedNormal
function FPackedNormal:get() end



---@class FPackedRGB10A2N
---@field Packed int32
FPackedRGB10A2N = {}

---@return FPackedRGB10A2N
function FPackedRGB10A2N:get() end



---@class FPackedRGBA16N
---@field XY int32
---@field ZW int32
FPackedRGBA16N = {}

---@return FPackedRGBA16N
function FPackedRGBA16N:get() end



---@class FPlane : FVector
---@field W double
FPlane = {}

---@return FPlane
function FPlane:get() end



---@class FPlane4d : FVector3d
---@field W double
FPlane4d = {}

---@return FPlane4d
function FPlane4d:get() end



---@class FPlane4f : FVector3f
---@field W float
FPlane4f = {}

---@return FPlane4f
function FPlane4f:get() end



---@class FPlatformInputDeviceState
---@field OwningPlatformUser FPlatformUserId
---@field ConnectionState EInputDeviceConnectionState
FPlatformInputDeviceState = {}

---@return FPlatformInputDeviceState
function FPlatformInputDeviceState:get() end



---@class FPlatformUserId
---@field InternalId int32
FPlatformUserId = {}

---@return FPlatformUserId
function FPlatformUserId:get() end



---@class FPolyglotTextData
---@field Category ELocalizedTextSourceCategory
---@field NativeCulture FString
---@field Namespace FString
---@field Key FString
---@field NativeString FString
---@field LocalizedStrings TMap<FString, FString>
---@field bIsMinimalPatch boolean
---@field CachedText FText
FPolyglotTextData = {}

---@return FPolyglotTextData
function FPolyglotTextData:get() end



---@class FPrimaryAssetId
---@field PrimaryAssetType FPrimaryAssetType
---@field PrimaryAssetName FName
FPrimaryAssetId = {}

---@return FPrimaryAssetId
function FPrimaryAssetId:get() end



---@class FPrimaryAssetType
---@field Name FName
FPrimaryAssetType = {}

---@return FPrimaryAssetType
function FPrimaryAssetType:get() end



---@class FQualifiedFrameTime
---@field Time FFrameTime
---@field Rate FFrameRate
FQualifiedFrameTime = {}

---@return FQualifiedFrameTime
function FQualifiedFrameTime:get() end



---@class FQuat
---@field X double
---@field Y double
---@field Z double
---@field W double
FQuat = {}

---@return FQuat
function FQuat:get() end



---@class FQuat4d
---@field X double
---@field Y double
---@field Z double
---@field W double
FQuat4d = {}

---@return FQuat4d
function FQuat4d:get() end



---@class FQuat4f
---@field X float
---@field Y float
---@field Z float
---@field W float
FQuat4f = {}

---@return FQuat4f
function FQuat4f:get() end



---@class FRandomStream
---@field InitialSeed int32
---@field Seed int32
FRandomStream = {}

---@return FRandomStream
function FRandomStream:get() end



---@class FRotator
---@field Pitch double
---@field Yaw double
---@field Roll double
FRotator = {}

---@return FRotator
function FRotator:get() end



---@class FRotator3d
---@field Pitch double
---@field Yaw double
---@field Roll double
FRotator3d = {}

---@return FRotator3d
function FRotator3d:get() end



---@class FRotator3f
---@field Pitch float
---@field Yaw float
---@field Roll float
FRotator3f = {}

---@return FRotator3f
function FRotator3f:get() end



---@class FSoftClassPath : FSoftObjectPath
FSoftClassPath = {}

---@return FSoftClassPath
function FSoftClassPath:get() end


---@class FSoftObjectPath
---@field AssetPath FTopLevelAssetPath
---@field SubPathString FString
FSoftObjectPath = {}

---@return FSoftObjectPath
function FSoftObjectPath:get() end



---@class FTemplateString
---@field Template FString
FTemplateString = {}

---@return FTemplateString
function FTemplateString:get() end



---@class FTestUninitializedScriptStructMembersTest
---@field UninitializedObjectReference UObject
---@field InitializedObjectReference UObject
---@field UnusedValue float
FTestUninitializedScriptStructMembersTest = {}

---@return FTestUninitializedScriptStructMembersTest
function FTestUninitializedScriptStructMembersTest:get() end



---@class FTimecode
---@field Hours int32
---@field Minutes int32
---@field Seconds int32
---@field Frames int32
---@field bDropFrameFormat boolean
FTimecode = {}

---@return FTimecode
function FTimecode:get() end



---@class FTimespan
FTimespan = {}

---@return FTimespan
function FTimespan:get() end


---@class FTopLevelAssetPath
---@field PackageName FName
---@field AssetName FName
FTopLevelAssetPath = {}

---@return FTopLevelAssetPath
function FTopLevelAssetPath:get() end



---@class FTransform
---@field Rotation FQuat
---@field Translation FVector
---@field Scale3D FVector
FTransform = {}

---@return FTransform
function FTransform:get() end



---@class FTransform3d
---@field Rotation FQuat4d
---@field Translation FVector3d
---@field Scale3D FVector3d
FTransform3d = {}

---@return FTransform3d
function FTransform3d:get() end



---@class FTransform3f
---@field Rotation FQuat4f
---@field Translation FVector3f
---@field Scale3D FVector3f
FTransform3f = {}

---@return FTransform3f
function FTransform3f:get() end



---@class FTwoVectors
---@field v1 FVector
---@field v2 FVector
FTwoVectors = {}

---@return FTwoVectors
function FTwoVectors:get() end



---@class FUint32Point
---@field X int32
---@field Y int32
FUint32Point = {}

---@return FUint32Point
function FUint32Point:get() end



---@class FUint32Vector
---@field X uint32
---@field Y uint32
---@field Z uint32
FUint32Vector = {}

---@return FUint32Vector
function FUint32Vector:get() end



---@class FUint32Vector2
---@field X uint32
---@field Y uint32
FUint32Vector2 = {}

---@return FUint32Vector2
function FUint32Vector2:get() end



---@class FUint32Vector4
---@field X uint32
---@field Y uint32
---@field Z uint32
---@field W uint32
FUint32Vector4 = {}

---@return FUint32Vector4
function FUint32Vector4:get() end



---@class FUint64Point
---@field X int64
---@field Y int64
FUint64Point = {}

---@return FUint64Point
function FUint64Point:get() end



---@class FUint64Vector
---@field X uint64
---@field Y uint64
---@field Z uint64
FUint64Vector = {}

---@return FUint64Vector
function FUint64Vector:get() end



---@class FUint64Vector2
---@field X uint64
---@field Y uint64
FUint64Vector2 = {}

---@return FUint64Vector2
function FUint64Vector2:get() end



---@class FUint64Vector4
---@field X uint64
---@field Y uint64
---@field Z uint64
---@field W uint64
FUint64Vector4 = {}

---@return FUint64Vector4
function FUint64Vector4:get() end



---@class FUintPoint
---@field X int32
---@field Y int32
FUintPoint = {}

---@return FUintPoint
function FUintPoint:get() end



---@class FUintVector
---@field X uint32
---@field Y uint32
---@field Z uint32
FUintVector = {}

---@return FUintVector
function FUintVector:get() end



---@class FUintVector2
---@field X uint32
---@field Y uint32
FUintVector2 = {}

---@return FUintVector2
function FUintVector2:get() end



---@class FUintVector4
---@field X uint32
---@field Y uint32
---@field Z uint32
---@field W uint32
FUintVector4 = {}

---@return FUintVector4
function FUintVector4:get() end



---@class FVector
---@field X double
---@field Y double
---@field Z double
FVector = {}

---@return FVector
function FVector:get() end



---@class FVector2D
---@field X double
---@field Y double
FVector2D = {}

---@return FVector2D
function FVector2D:get() end



---@class FVector2f
---@field X float
---@field Y float
FVector2f = {}

---@return FVector2f
function FVector2f:get() end



---@class FVector3d
---@field X double
---@field Y double
---@field Z double
FVector3d = {}

---@return FVector3d
function FVector3d:get() end



---@class FVector3f
---@field X float
---@field Y float
---@field Z float
FVector3f = {}

---@return FVector3f
function FVector3f:get() end



---@class FVector4
---@field X double
---@field Y double
---@field Z double
---@field W double
FVector4 = {}

---@return FVector4
function FVector4:get() end



---@class FVector4d
---@field X double
---@field Y double
---@field Z double
---@field W double
FVector4d = {}

---@return FVector4d
function FVector4d:get() end



---@class FVector4f
---@field X float
---@field Y float
---@field Z float
---@field W float
FVector4f = {}

---@return FVector4f
function FVector4f:get() end



---@class IInterface : UObject
IInterface = {}

---@return IInterface
function IInterface:get() end


---@class UArrayProperty : UProperty
UArrayProperty = {}

---@return UArrayProperty
function UArrayProperty:get() end


---@class UBoolProperty : UProperty
UBoolProperty = {}

---@return UBoolProperty
function UBoolProperty:get() end


---@class UByteProperty : UNumericProperty
UByteProperty = {}

---@return UByteProperty
function UByteProperty:get() end


---@class UClass : UStruct
UClass = {}

---@return UClass
function UClass:get() end


---@class UClassProperty : UObjectProperty
UClassProperty = {}

---@return UClassProperty
function UClassProperty:get() end


---@class UDefault__Class
UDefault__Class = {}

---@return UDefault__Class
function UDefault__Class:get() end


---@class UDefault__DynamicClass
UDefault__DynamicClass = {}

---@return UDefault__DynamicClass
function UDefault__DynamicClass:get() end


---@class UDefault__LinkerPlaceholderClass
UDefault__LinkerPlaceholderClass = {}

---@return UDefault__LinkerPlaceholderClass
function UDefault__LinkerPlaceholderClass:get() end


---@class UDelegateFunction : UFunction
UDelegateFunction = {}

---@return UDelegateFunction
function UDelegateFunction:get() end


---@class UDelegateProperty : UProperty
UDelegateProperty = {}

---@return UDelegateProperty
function UDelegateProperty:get() end


---@class UDoubleProperty : UNumericProperty
UDoubleProperty = {}

---@return UDoubleProperty
function UDoubleProperty:get() end


---@class UDynamicClass : UClass
UDynamicClass = {}

---@return UDynamicClass
function UDynamicClass:get() end


---@class UEnum : UField
UEnum = {}

---@return UEnum
function UEnum:get() end


---@class UEnumProperty : UProperty
UEnumProperty = {}

---@return UEnumProperty
function UEnumProperty:get() end


---@class UField : UObject
UField = {}

---@return UField
function UField:get() end


---@class UFloatProperty : UNumericProperty
UFloatProperty = {}

---@return UFloatProperty
function UFloatProperty:get() end


---@class UFunction : UStruct
UFunction = {}

---@return UFunction
function UFunction:get() end


---@class UGCObjectReferencer : UObject
UGCObjectReferencer = {}

---@return UGCObjectReferencer
function UGCObjectReferencer:get() end


---@class UInt16Property : UNumericProperty
UInt16Property = {}

---@return UInt16Property
function UInt16Property:get() end


---@class UInt64Property : UNumericProperty
UInt64Property = {}

---@return UInt64Property
function UInt64Property:get() end


---@class UInt8Property : UNumericProperty
UInt8Property = {}

---@return UInt8Property
function UInt8Property:get() end


---@class UIntProperty : UNumericProperty
UIntProperty = {}

---@return UIntProperty
function UIntProperty:get() end


---@class UInterfaceProperty : UProperty
UInterfaceProperty = {}

---@return UInterfaceProperty
function UInterfaceProperty:get() end


---@class ULazyObjectProperty : UObjectPropertyBase
ULazyObjectProperty = {}

---@return ULazyObjectProperty
function ULazyObjectProperty:get() end


---@class ULinkerPlaceholderClass : UClass
ULinkerPlaceholderClass = {}

---@return ULinkerPlaceholderClass
function ULinkerPlaceholderClass:get() end


---@class ULinkerPlaceholderExportObject : UObject
ULinkerPlaceholderExportObject = {}

---@return ULinkerPlaceholderExportObject
function ULinkerPlaceholderExportObject:get() end


---@class ULinkerPlaceholderFunction : UFunction
ULinkerPlaceholderFunction = {}

---@return ULinkerPlaceholderFunction
function ULinkerPlaceholderFunction:get() end


---@class UMapProperty : UProperty
UMapProperty = {}

---@return UMapProperty
function UMapProperty:get() end


---@class UMetaData : UObject
UMetaData = {}

---@return UMetaData
function UMetaData:get() end


---@class UMulticastDelegateProperty : UProperty
UMulticastDelegateProperty = {}

---@return UMulticastDelegateProperty
function UMulticastDelegateProperty:get() end


---@class UMulticastDelegatePropertyWrapper : UPropertyWrapper
UMulticastDelegatePropertyWrapper = {}

---@return UMulticastDelegatePropertyWrapper
function UMulticastDelegatePropertyWrapper:get() end


---@class UMulticastInlineDelegateProperty : UMulticastDelegateProperty
UMulticastInlineDelegateProperty = {}

---@return UMulticastInlineDelegateProperty
function UMulticastInlineDelegateProperty:get() end


---@class UMulticastInlineDelegatePropertyWrapper : UMulticastDelegatePropertyWrapper
UMulticastInlineDelegatePropertyWrapper = {}

---@return UMulticastInlineDelegatePropertyWrapper
function UMulticastInlineDelegatePropertyWrapper:get() end


---@class UMulticastSparseDelegateProperty : UMulticastDelegateProperty
UMulticastSparseDelegateProperty = {}

---@return UMulticastSparseDelegateProperty
function UMulticastSparseDelegateProperty:get() end


---@class UNameProperty : UProperty
UNameProperty = {}

---@return UNameProperty
function UNameProperty:get() end


---@class UNumericProperty : UProperty
UNumericProperty = {}

---@return UNumericProperty
function UNumericProperty:get() end


---@class UObjectProperty : UObjectPropertyBase
UObjectProperty = {}

---@return UObjectProperty
function UObjectProperty:get() end


---@class UObjectPropertyBase : UProperty
UObjectPropertyBase = {}

---@return UObjectPropertyBase
function UObjectPropertyBase:get() end


---@class UObjectRedirector : UObject
UObjectRedirector = {}

---@return UObjectRedirector
function UObjectRedirector:get() end


---@class UPackage : UObject
UPackage = {}

---@return UPackage
function UPackage:get() end


---@class UPackageMap : UObject
UPackageMap = {}

---@return UPackageMap
function UPackageMap:get() end


---@class UProperty : UField
UProperty = {}

---@return UProperty
function UProperty:get() end


---@class UPropertyWrapper : UObject
UPropertyWrapper = {}

---@return UPropertyWrapper
function UPropertyWrapper:get() end


---@class UScriptStruct : UStruct
UScriptStruct = {}

---@return UScriptStruct
function UScriptStruct:get() end


---@class USetProperty : UProperty
USetProperty = {}

---@return USetProperty
function USetProperty:get() end


---@class USoftClassProperty : USoftObjectProperty
USoftClassProperty = {}

---@return USoftClassProperty
function USoftClassProperty:get() end


---@class USoftObjectProperty : UObjectPropertyBase
USoftObjectProperty = {}

---@return USoftObjectProperty
function USoftObjectProperty:get() end


---@class USparseDelegateFunction : UDelegateFunction
USparseDelegateFunction = {}

---@return USparseDelegateFunction
function USparseDelegateFunction:get() end


---@class UStrProperty : UProperty
UStrProperty = {}

---@return UStrProperty
function UStrProperty:get() end


---@class UStruct : UField
UStruct = {}

---@return UStruct
function UStruct:get() end


---@class UStructProperty : UProperty
UStructProperty = {}

---@return UStructProperty
function UStructProperty:get() end


---@class UTextBuffer : UObject
UTextBuffer = {}

---@return UTextBuffer
function UTextBuffer:get() end


---@class UTextProperty : UProperty
UTextProperty = {}

---@return UTextProperty
function UTextProperty:get() end


---@class UUInt16Property : UNumericProperty
UUInt16Property = {}

---@return UUInt16Property
function UUInt16Property:get() end


---@class UUInt32Property : UNumericProperty
UUInt32Property = {}

---@return UUInt32Property
function UUInt32Property:get() end


---@class UUInt64Property : UNumericProperty
UUInt64Property = {}

---@return UUInt64Property
function UUInt64Property:get() end


---@class UWeakObjectProperty : UObjectPropertyBase
UWeakObjectProperty = {}

---@return UWeakObjectProperty
function UWeakObjectProperty:get() end


