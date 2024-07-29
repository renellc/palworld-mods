---@meta

---@class AResonanceAudioDirectivityVisualizer : AActor
---@field Material UMaterial
---@field Settings UResonanceAudioSpatializationSourceSettings
AResonanceAudioDirectivityVisualizer = {}

---@return AResonanceAudioDirectivityVisualizer
function AResonanceAudioDirectivityVisualizer:get() end



---@class FResonanceAudioReverbPluginSettings
---@field bEnableRoomEffects boolean
---@field bGetTransformFromAudioVolume boolean
---@field RoomPosition FVector
---@field RoomRotation FQuat
---@field RoomDimensions FVector
---@field LeftWallMaterial ERaMaterialName
---@field RightWallMaterial ERaMaterialName
---@field FloorMaterial ERaMaterialName
---@field CeilingMaterial ERaMaterialName
---@field FrontWallMaterial ERaMaterialName
---@field BackWallMaterial ERaMaterialName
---@field ReflectionScalar float
---@field ReverbGain float
---@field ReverbTimeModifier float
---@field ReverbBrightness float
FResonanceAudioReverbPluginSettings = {}

---@return FResonanceAudioReverbPluginSettings
function FResonanceAudioReverbPluginSettings:get() end



---@class UResonanceAudioBlueprintFunctionLibrary : UBlueprintFunctionLibrary
UResonanceAudioBlueprintFunctionLibrary = {}

---@return UResonanceAudioBlueprintFunctionLibrary
function UResonanceAudioBlueprintFunctionLibrary:get() end

---@param InPreset UResonanceAudioReverbPluginPreset
function UResonanceAudioBlueprintFunctionLibrary:SetGlobalReverbPreset(InPreset) end
---@return UResonanceAudioReverbPluginPreset
function UResonanceAudioBlueprintFunctionLibrary:GetGlobalReverbPreset() end


---@class UResonanceAudioReverbPluginPreset : USoundEffectSubmixPreset
---@field Settings FResonanceAudioReverbPluginSettings
UResonanceAudioReverbPluginPreset = {}

---@return UResonanceAudioReverbPluginPreset
function UResonanceAudioReverbPluginPreset:get() end

---@param InRotation FQuat
function UResonanceAudioReverbPluginPreset:SetRoomRotation(InRotation) end
---@param InPosition FVector
function UResonanceAudioReverbPluginPreset:SetRoomPosition(InPosition) end
---@param InMaterials TArray<ERaMaterialName>
function UResonanceAudioReverbPluginPreset:SetRoomMaterials(InMaterials) end
---@param InDimensions FVector
function UResonanceAudioReverbPluginPreset:SetRoomDimensions(InDimensions) end
---@param InReverbTimeModifier float
function UResonanceAudioReverbPluginPreset:SetReverbTimeModifier(InReverbTimeModifier) end
---@param InReverbGain float
function UResonanceAudioReverbPluginPreset:SetReverbGain(InReverbGain) end
---@param InReverbBrightness float
function UResonanceAudioReverbPluginPreset:SetReverbBrightness(InReverbBrightness) end
---@param InReflectionScalar float
function UResonanceAudioReverbPluginPreset:SetReflectionScalar(InReflectionScalar) end
---@param bInEnableRoomEffects boolean
function UResonanceAudioReverbPluginPreset:SetEnableRoomEffects(bInEnableRoomEffects) end


---@class UResonanceAudioSettings : UObject
---@field OutputSubmix FSoftObjectPath
---@field QualityMode ERaQualityMode
---@field GlobalReverbPreset FSoftObjectPath
---@field GlobalSourcePreset FSoftObjectPath
UResonanceAudioSettings = {}

---@return UResonanceAudioSettings
function UResonanceAudioSettings:get() end



---@class UResonanceAudioSoundfieldSettings : USoundfieldEncodingSettingsBase
---@field RenderMode EResonanceRenderMode
UResonanceAudioSoundfieldSettings = {}

---@return UResonanceAudioSoundfieldSettings
function UResonanceAudioSoundfieldSettings:get() end



---@class UResonanceAudioSpatializationSourceSettings : USpatializationPluginSourceSettingsBase
---@field SpatializationMethod ERaSpatializationMethod
---@field Pattern float
---@field Sharpness float
---@field bToggleVisualization boolean
---@field Scale float
---@field Spread float
---@field Rolloff ERaDistanceRolloffModel
---@field minDistance float
---@field MaxDistance float
UResonanceAudioSpatializationSourceSettings = {}

---@return UResonanceAudioSpatializationSourceSettings
function UResonanceAudioSpatializationSourceSettings:get() end

---@param InSpread float
function UResonanceAudioSpatializationSourceSettings:SetSoundSourceSpread(InSpread) end
---@param InPattern float
---@param InSharpness float
function UResonanceAudioSpatializationSourceSettings:SetSoundSourceDirectivity(InPattern, InSharpness) end


