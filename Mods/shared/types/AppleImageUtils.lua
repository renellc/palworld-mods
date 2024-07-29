---@meta

---@class FAppleImageUtilsImageConversionResult
---@field Error FString
---@field ImageData TArray<uint8>
FAppleImageUtilsImageConversionResult = {}

---@return FAppleImageUtilsImageConversionResult
function FAppleImageUtilsImageConversionResult:get() end



---@class IAppleImageInterface : IInterface
IAppleImageInterface = {}

---@return IAppleImageInterface
function IAppleImageInterface:get() end


---@class UAppleImageUtilsBaseAsyncTaskBlueprintProxy : UObject
---@field OnSuccess FAppleImageUtilsBaseAsyncTaskBlueprintProxyOnSuccess
---@field OnFailure FAppleImageUtilsBaseAsyncTaskBlueprintProxyOnFailure
---@field ConversionResult FAppleImageUtilsImageConversionResult
UAppleImageUtilsBaseAsyncTaskBlueprintProxy = {}

---@return UAppleImageUtilsBaseAsyncTaskBlueprintProxy
function UAppleImageUtilsBaseAsyncTaskBlueprintProxy:get() end

---@param SourceImage UTexture
---@param bWantColor boolean
---@param bUseGpu boolean
---@param Scale float
---@param Rotate ETextureRotationDirection
---@return UAppleImageUtilsBaseAsyncTaskBlueprintProxy
function UAppleImageUtilsBaseAsyncTaskBlueprintProxy:CreateProxyObjectForConvertToTIFF(SourceImage, bWantColor, bUseGpu, Scale, Rotate) end
---@param SourceImage UTexture
---@param bWantColor boolean
---@param bUseGpu boolean
---@param Scale float
---@param Rotate ETextureRotationDirection
---@return UAppleImageUtilsBaseAsyncTaskBlueprintProxy
function UAppleImageUtilsBaseAsyncTaskBlueprintProxy:CreateProxyObjectForConvertToPNG(SourceImage, bWantColor, bUseGpu, Scale, Rotate) end
---@param SourceImage UTexture
---@param Quality int32
---@param bWantColor boolean
---@param bUseGpu boolean
---@param Scale float
---@param Rotate ETextureRotationDirection
---@return UAppleImageUtilsBaseAsyncTaskBlueprintProxy
function UAppleImageUtilsBaseAsyncTaskBlueprintProxy:CreateProxyObjectForConvertToJPEG(SourceImage, Quality, bWantColor, bUseGpu, Scale, Rotate) end
---@param SourceImage UTexture
---@param Quality int32
---@param bWantColor boolean
---@param bUseGpu boolean
---@param Scale float
---@param Rotate ETextureRotationDirection
---@return UAppleImageUtilsBaseAsyncTaskBlueprintProxy
function UAppleImageUtilsBaseAsyncTaskBlueprintProxy:CreateProxyObjectForConvertToHEIF(SourceImage, Quality, bWantColor, bUseGpu, Scale, Rotate) end


