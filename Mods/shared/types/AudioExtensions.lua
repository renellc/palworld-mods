---@meta

---@class FAudioParameter
---@field ParamName FName
---@field FloatParam float
---@field BoolParam boolean
---@field IntParam int32
---@field ObjectParam UObject
---@field StringParam FString
---@field ArrayFloatParam TArray<float>
---@field ArrayBoolParam TArray<boolean>
---@field ArrayIntParam TArray<int32>
---@field ArrayObjectParam TArray<UObject>
---@field ArrayStringParam TArray<FString>
---@field ParamType EAudioParameterType
---@field TypeName FName
FAudioParameter = {}

---@return FAudioParameter
function FAudioParameter:get() end



---@class IAudioParameterControllerInterface : IInterface
IAudioParameterControllerInterface = {}

---@return IAudioParameterControllerInterface
function IAudioParameterControllerInterface:get() end

---@param InName FName
function IAudioParameterControllerInterface:SetTriggerParameter(InName) end
---@param InName FName
---@param InValue FString
function IAudioParameterControllerInterface:SetStringParameter(InName, InValue) end
---@param InName FName
---@param InValue TArray<FString>
function IAudioParameterControllerInterface:SetStringArrayParameter(InName, InValue) end
---@param InParameters TArray<FAudioParameter>
function IAudioParameterControllerInterface:SetParameters_Blueprint(InParameters) end
---@param InName FName
---@param InValue UObject
function IAudioParameterControllerInterface:SetObjectParameter(InName, InValue) end
---@param InName FName
---@param InValue TArray<UObject>
function IAudioParameterControllerInterface:SetObjectArrayParameter(InName, InValue) end
---@param InName FName
---@param inInt int32
function IAudioParameterControllerInterface:SetIntParameter(InName, inInt) end
---@param InName FName
---@param InValue TArray<int32>
function IAudioParameterControllerInterface:SetIntArrayParameter(InName, InValue) end
---@param InName FName
---@param InFloat float
function IAudioParameterControllerInterface:SetFloatParameter(InName, InFloat) end
---@param InName FName
---@param InValue TArray<float>
function IAudioParameterControllerInterface:SetFloatArrayParameter(InName, InValue) end
---@param InName FName
---@param InBool boolean
function IAudioParameterControllerInterface:SetBoolParameter(InName, InBool) end
---@param InName FName
---@param InValue TArray<boolean>
function IAudioParameterControllerInterface:SetBoolArrayParameter(InName, InValue) end
function IAudioParameterControllerInterface:ResetParameters() end


---@class UAudioCodecEncoderSettings : UObject
---@field Version int32
UAudioCodecEncoderSettings = {}

---@return UAudioCodecEncoderSettings
function UAudioCodecEncoderSettings:get() end



---@class UAudioEndpointSettingsBase : UObject
UAudioEndpointSettingsBase = {}

---@return UAudioEndpointSettingsBase
function UAudioEndpointSettingsBase:get() end


---@class UAudioPcmEncoderSettings : UAudioCodecEncoderSettings
---@field BitDepthConversion EPcmBitDepthConversion
UAudioPcmEncoderSettings = {}

---@return UAudioPcmEncoderSettings
function UAudioPcmEncoderSettings:get() end



---@class UDummyEndpointSettings : UAudioEndpointSettingsBase
UDummyEndpointSettings = {}

---@return UDummyEndpointSettings
function UDummyEndpointSettings:get() end


---@class UOcclusionPluginSourceSettingsBase : UObject
UOcclusionPluginSourceSettingsBase = {}

---@return UOcclusionPluginSourceSettingsBase
function UOcclusionPluginSourceSettingsBase:get() end


---@class UReverbPluginSourceSettingsBase : UObject
UReverbPluginSourceSettingsBase = {}

---@return UReverbPluginSourceSettingsBase
function UReverbPluginSourceSettingsBase:get() end


---@class USoundModulatorBase : UObject
USoundModulatorBase = {}

---@return USoundModulatorBase
function USoundModulatorBase:get() end


---@class USoundfieldEffectBase : UObject
---@field Settings USoundfieldEffectSettingsBase
USoundfieldEffectBase = {}

---@return USoundfieldEffectBase
function USoundfieldEffectBase:get() end



---@class USoundfieldEffectSettingsBase : UObject
USoundfieldEffectSettingsBase = {}

---@return USoundfieldEffectSettingsBase
function USoundfieldEffectSettingsBase:get() end


---@class USoundfieldEncodingSettingsBase : UObject
USoundfieldEncodingSettingsBase = {}

---@return USoundfieldEncodingSettingsBase
function USoundfieldEncodingSettingsBase:get() end


---@class USoundfieldEndpointSettingsBase : UObject
USoundfieldEndpointSettingsBase = {}

---@return USoundfieldEndpointSettingsBase
function USoundfieldEndpointSettingsBase:get() end


---@class USourceDataOverridePluginSourceSettingsBase : UObject
USourceDataOverridePluginSourceSettingsBase = {}

---@return USourceDataOverridePluginSourceSettingsBase
function USourceDataOverridePluginSourceSettingsBase:get() end


---@class USpatializationPluginSourceSettingsBase : UObject
USpatializationPluginSourceSettingsBase = {}

---@return USpatializationPluginSourceSettingsBase
function USpatializationPluginSourceSettingsBase:get() end


---@class UWaveformTransformationBase : UObject
UWaveformTransformationBase = {}

---@return UWaveformTransformationBase
function UWaveformTransformationBase:get() end


---@class UWaveformTransformationChain : UObject
---@field Transformations TArray<UWaveformTransformationBase>
UWaveformTransformationChain = {}

---@return UWaveformTransformationChain
function UWaveformTransformationChain:get() end



