---@meta

---@class ACameraRig_Crane : AActor
---@field CranePitch float
---@field CraneYaw float
---@field CraneArmLength float
---@field bLockMountPitch boolean
---@field bLockMountYaw boolean
---@field TransformComponent USceneComponent
---@field CraneYawControl USceneComponent
---@field CranePitchControl USceneComponent
---@field CraneCameraMount USceneComponent
ACameraRig_Crane = {}

---@return ACameraRig_Crane
function ACameraRig_Crane:get() end



---@class ACameraRig_Rail : AActor
---@field CurrentPositionOnRail float
---@field bLockOrientationToRail boolean
---@field TransformComponent USceneComponent
---@field RailSplineComponent USplineComponent
---@field RailCameraMount USceneComponent
ACameraRig_Rail = {}

---@return ACameraRig_Rail
function ACameraRig_Rail:get() end

---@return USplineComponent
function ACameraRig_Rail:GetRailSplineComponent() end


---@class ACineCameraActor : ACameraActor
---@field LookatTrackingSettings FCameraLookatTrackingSettings
ACineCameraActor = {}

---@return ACineCameraActor
function ACineCameraActor:get() end

---@return UCineCameraComponent
function ACineCameraActor:GetCineCameraComponent() end


---@class FCameraFilmbackSettings
---@field SensorWidth float
---@field SensorHeight float
---@field SensorAspectRatio float
FCameraFilmbackSettings = {}

---@return FCameraFilmbackSettings
function FCameraFilmbackSettings:get() end



---@class FCameraFocusSettings
---@field FocusMethod ECameraFocusMethod
---@field ManualFocusDistance float
---@field TrackingFocusSettings FCameraTrackingFocusSettings
---@field bSmoothFocusChanges boolean
---@field FocusSmoothingInterpSpeed float
---@field FocusOffset float
FCameraFocusSettings = {}

---@return FCameraFocusSettings
function FCameraFocusSettings:get() end



---@class FCameraLensSettings
---@field MinFocalLength float
---@field MaxFocalLength float
---@field MinFStop float
---@field MaxFStop float
---@field MinimumFocusDistance float
---@field SqueezeFactor float
---@field DiaphragmBladeCount int32
FCameraLensSettings = {}

---@return FCameraLensSettings
function FCameraLensSettings:get() end



---@class FCameraLookatTrackingSettings
---@field bEnableLookAtTracking boolean
---@field bDrawDebugLookAtTrackingPosition boolean
---@field LookAtTrackingInterpSpeed float
---@field ActorToTrack TSoftObjectPtr<AActor>
---@field RelativeOffset FVector
---@field bAllowRoll boolean
FCameraLookatTrackingSettings = {}

---@return FCameraLookatTrackingSettings
function FCameraLookatTrackingSettings:get() end



---@class FCameraTrackingFocusSettings
---@field ActorToTrack TSoftObjectPtr<AActor>
---@field RelativeOffset FVector
---@field bDrawDebugTrackingFocusPoint boolean
FCameraTrackingFocusSettings = {}

---@return FCameraTrackingFocusSettings
function FCameraTrackingFocusSettings:get() end



---@class FNamedFilmbackPreset
---@field Name FString
---@field FilmbackSettings FCameraFilmbackSettings
FNamedFilmbackPreset = {}

---@return FNamedFilmbackPreset
function FNamedFilmbackPreset:get() end



---@class FNamedLensPreset
---@field Name FString
---@field LensSettings FCameraLensSettings
FNamedLensPreset = {}

---@return FNamedLensPreset
function FNamedLensPreset:get() end



---@class FNamedPlateCropPreset
---@field Name FString
---@field CropSettings FPlateCropSettings
FNamedPlateCropPreset = {}

---@return FNamedPlateCropPreset
function FNamedPlateCropPreset:get() end



---@class FPlateCropSettings
---@field AspectRatio float
FPlateCropSettings = {}

---@return FPlateCropSettings
function FPlateCropSettings:get() end



---@class UCineCameraComponent : UCameraComponent
---@field FilmbackSettings FCameraFilmbackSettings
---@field Filmback FCameraFilmbackSettings
---@field LensSettings FCameraLensSettings
---@field FocusSettings FCameraFocusSettings
---@field CropSettings FPlateCropSettings
---@field CurrentFocalLength float
---@field CurrentAperture float
---@field CurrentFocusDistance float
---@field bOverride_CustomNearClippingPlane boolean
---@field CustomNearClippingPlane float
---@field FilmbackPresets TArray<FNamedFilmbackPreset>
---@field LensPresets TArray<FNamedLensPreset>
---@field DefaultFilmbackPresetName FString
---@field DefaultFilmbackPreset FString
---@field DefaultLensPresetName FString
---@field DefaultLensFocalLength float
---@field DefaultLensFStop float
UCineCameraComponent = {}

---@return UCineCameraComponent
function UCineCameraComponent:get() end

---@param NewLensSettings FCameraLensSettings
function UCineCameraComponent:SetLensSettings(NewLensSettings) end
---@param InPresetName FString
function UCineCameraComponent:SetLensPresetByName(InPresetName) end
---@param NewFocusSettings FCameraFocusSettings
function UCineCameraComponent:SetFocusSettings(NewFocusSettings) end
---@param InPresetName FString
function UCineCameraComponent:SetFilmbackPresetByName(InPresetName) end
---@param NewFilmback FCameraFilmbackSettings
function UCineCameraComponent:SetFilmback(NewFilmback) end
---@param InFocalLength float
function UCineCameraComponent:SetCurrentFocalLength(InFocalLength) end
---@param NewCurrentAperture float
function UCineCameraComponent:SetCurrentAperture(NewCurrentAperture) end
---@param NewCropSettings FPlateCropSettings
function UCineCameraComponent:SetCropSettings(NewCropSettings) end
---@param InPresetName FString
function UCineCameraComponent:SetCropPresetByName(InPresetName) end
---@return float
function UCineCameraComponent:GetVerticalFieldOfView() end
---@return TArray<FNamedLensPreset>
function UCineCameraComponent:GetLensPresetsCopy() end
---@return FString
function UCineCameraComponent:GetLensPresetName() end
---@return float
function UCineCameraComponent:GetHorizontalFieldOfView() end
---@return TArray<FNamedFilmbackPreset>
function UCineCameraComponent:GetFilmbackPresetsCopy() end
---@return FString
function UCineCameraComponent:GetFilmbackPresetName() end
---@return FString
function UCineCameraComponent:GetDefaultFilmbackPresetName() end
---@return FString
function UCineCameraComponent:GetCropPresetName() end


---@class UCineCameraSettings : UDeveloperSettings
---@field DefaultLensPresetName FString
---@field DefaultLensFocalLength float
---@field DefaultLensFStop float
---@field LensPresets TArray<FNamedLensPreset>
---@field DefaultFilmbackPreset FString
---@field FilmbackPresets TArray<FNamedFilmbackPreset>
---@field DefaultCropPresetName FString
---@field CropPresets TArray<FNamedPlateCropPreset>
UCineCameraSettings = {}

---@return UCineCameraSettings
function UCineCameraSettings:get() end

---@param InLensPresets TArray<FNamedLensPreset>
function UCineCameraSettings:SetLensPresets(InLensPresets) end
---@param InFilmbackPresets TArray<FNamedFilmbackPreset>
function UCineCameraSettings:SetFilmbackPresets(InFilmbackPresets) end
---@param InDefaultLensPresetName FString
function UCineCameraSettings:SetDefaultLensPresetName(InDefaultLensPresetName) end
---@param InDefaultLensFStop float
function UCineCameraSettings:SetDefaultLensFStop(InDefaultLensFStop) end
---@param InDefaultLensFocalLength float
function UCineCameraSettings:SetDefaultLensFocalLength(InDefaultLensFocalLength) end
---@param InDefaultFilmbackPreset FString
function UCineCameraSettings:SetDefaultFilmbackPreset(InDefaultFilmbackPreset) end
---@param InDefaultCropPresetName FString
function UCineCameraSettings:SetDefaultCropPresetName(InDefaultCropPresetName) end
---@param InCropPresets TArray<FNamedPlateCropPreset>
function UCineCameraSettings:SetCropPresets(InCropPresets) end
---@return TArray<FString>
function UCineCameraSettings:GetLensPresetNames() end
---@param PresetName FString
---@param LensSettings FCameraLensSettings
---@return boolean
function UCineCameraSettings:GetLensPresetByName(PresetName, LensSettings) end
---@return TArray<FString>
function UCineCameraSettings:GetFilmbackPresetNames() end
---@param PresetName FString
---@param FilmbackSettings FCameraFilmbackSettings
---@return boolean
function UCineCameraSettings:GetFilmbackPresetByName(PresetName, FilmbackSettings) end
---@return TArray<FString>
function UCineCameraSettings:GetCropPresetNames() end
---@param PresetName FString
---@param CropSettings FPlateCropSettings
---@return boolean
function UCineCameraSettings:GetCropPresetByName(PresetName, CropSettings) end
---@return UCineCameraSettings
function UCineCameraSettings:GetCineCameraSettings() end


