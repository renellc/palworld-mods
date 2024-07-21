---@meta

---@class UWBP_CharaCre_ScrollBoxContent_Voice_C : UWBP_CharaCre_ScrollBoxContentBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field WrapBox_Body UWrapBox
---@field OnChangedVoiceID FWBP_CharaCre_ScrollBoxContent_Voice_COnChangedVoiceID
---@field SampleVoiceArray TArray<UAkAudioEvent>
---@field PlayVoiceMap TMap<int32, int32>
---@field VoiceCount int32
---@field VoiceButtons TArray<UWBP_CharaCre_BodyTypeButton_C>
---@field LastClickedVoiceTypeButton UWBP_CharaCre_BodyTypeButton_C
UWBP_CharaCre_ScrollBoxContent_Voice_C = {}

---@param Widget UWBP_CharaCre_BodyTypeButton_C
function UWBP_CharaCre_ScrollBoxContent_Voice_C:OnClickedVoiceTypeButton(Widget) end
---@param VoiceID int32
UWBP_CharaCre_ScrollBoxContent_Voice_C['Play Sample Voice'] = function(VoiceID) end
---@param MakeInfo FPalPlayerDataCharacterMakeInfo
function UWBP_CharaCre_ScrollBoxContent_Voice_C:ApplyMakeInfo(MakeInfo) end
---@param Widget UWidget
function UWBP_CharaCre_ScrollBoxContent_Voice_C:GetRestoreFocusTarget(Widget) end
---@param Widget UWidget
function UWBP_CharaCre_ScrollBoxContent_Voice_C:GetTopFocusTarget(Widget) end
function UWBP_CharaCre_ScrollBoxContent_Voice_C:Construct() end
---@param EntryPoint int32
function UWBP_CharaCre_ScrollBoxContent_Voice_C:ExecuteUbergraph_WBP_CharaCre_ScrollBoxContent_Voice(EntryPoint) end
---@param VoiceID int32
function UWBP_CharaCre_ScrollBoxContent_Voice_C:OnChangedVoiceID__DelegateSignature(VoiceID) end


