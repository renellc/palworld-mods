---@meta

---@class UWBP_JoinGame_C : UPalUIJoinGameBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Image_69 UImage
---@field WBP_PalDebugInfo UWBP_PalDebugInfo_C
---@field WBP_Title_WorldMenu_Head UWBP_Title_WorldMenu_Head_C
---@field WBP_Title_WorldSelect UWBP_Title_WorldSelect_C
---@field SortType EPalUIServerListSortType
---@field ClickedServerInfo FPalUIServerDisplayData
---@field JoinServerDialogMsgID FDataTableRowHandle
---@field LastClickedServerButton TSoftObjectPtr<UWBP_Title_WorldSelect_ListContent_C>
---@field OfficialServerAddress TArray<FString>
---@field SearchWord FString
---@field RegionStrings TArray<FString>
UWBP_JoinGame_C = {}

---@param Type EPalUIServerListFilterType
---@param Region FString
---@param PageOffset int32
---@param Word FString
---@param SortType EPalUIServerListSortType
function UWBP_JoinGame_C:RequestGetServerListBP(Type, Region, PageOffset, Word, SortType) end
---@param bResult boolean
function UWBP_JoinGame_C:OnCloseJoinServerDialog(bResult) end
function UWBP_JoinGame_C:OpenJoinServerDialog() end
function UWBP_JoinGame_C:OnCancelAction() end
---@return UWidget
function UWBP_JoinGame_C:BP_GetDesiredFocusTarget() end
function UWBP_JoinGame_C:DisplayServer() end
---@param ResponseBody FString
---@param bResponseOK boolean
---@param ResponseCode int32
function UWBP_JoinGame_C:Completed_B0C690024643A528EA9A2B9DAEA567A3(ResponseBody, bResponseOK, ResponseCode) end
---@param Param UPalHUDDispatchParameterBase
UWBP_JoinGame_C['Password入力後'] = function(Param) end
function UWBP_JoinGame_C:OnCompleteGetServerListEvent() end
function UWBP_JoinGame_C:BndEvt__WBP_JoinGame_WBP_Title_WorldSelect_K2Node_ComponentBoundEvent_2_OnClickedServerList_OfficialButton__DelegateSignature() end
function UWBP_JoinGame_C:BndEvt__WBP_JoinGame_WBP_Title_WorldSelect_K2Node_ComponentBoundEvent_7_OnClickedServerList_CommunityButton__DelegateSignature() end
function UWBP_JoinGame_C:BndEvt__WBP_JoinGame_WBP_Title_WorldSelect_K2Node_ComponentBoundEvent_11_OnClickedServerList_HistoryButton__DelegateSignature() end
---@param bIsChecked boolean
function UWBP_JoinGame_C:OnChangeVersionIgnoreCheckbox(bIsChecked) end
function UWBP_JoinGame_C:NextButton() end
---@param Address FString
function UWBP_JoinGame_C:OnClicked_JoinByIPButton(Address) end
---@param bResult boolean
UWBP_JoinGame_C['カスタムイベント'] = function(bResult) end
function UWBP_JoinGame_C:Construct() end
---@param Widget UWBP_Title_WorldSelect_ListContent_C
function UWBP_JoinGame_C:BndEvt__WBP_JoinGame_WBP_Title_WorldSelect_K2Node_ComponentBoundEvent_6_OnClickedServerButton__DelegateSignature(Widget) end
---@param bResult boolean
UWBP_JoinGame_C['カスタムイベント_0'] = function(bResult) end
---@param SearchWord FString
function UWBP_JoinGame_C:BndEvt__WBP_JoinGame_WBP_Title_WorldSelect_K2Node_ComponentBoundEvent_5_OnClickedServerSearchButton__DelegateSignature(SearchWord) end
---@param Param UPalHUDDispatchParameterBase
UWBP_JoinGame_C['パスワード手動入力'] = function(Param) end
function UWBP_JoinGame_C:Destruct() end
function UWBP_JoinGame_C:PreviousButton() end
---@param SortType EPalUIServerListSortType
function UWBP_JoinGame_C:BndEvt__WBP_JoinGame_WBP_Title_WorldSelect_K2Node_ComponentBoundEvent_3_OnSelectedServerSortType__DelegateSignature(SortType) end
function UWBP_JoinGame_C:OnInitialized() end
---@param EntryPoint int32
function UWBP_JoinGame_C:ExecuteUbergraph_WBP_JoinGame(EntryPoint) end


