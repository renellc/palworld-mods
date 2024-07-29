---@meta

---@class FTypedElementIsSelectedOptions
---@field bAllowIndirect boolean
FTypedElementIsSelectedOptions = {}

---@return FTypedElementIsSelectedOptions
function FTypedElementIsSelectedOptions:get() end



---@class FTypedElementSelectionNormalizationOptions
---@field bExpandGroups boolean
---@field bFollowAttachment boolean
FTypedElementSelectionNormalizationOptions = {}

---@return FTypedElementSelectionNormalizationOptions
function FTypedElementSelectionNormalizationOptions:get() end



---@class FTypedElementSelectionOptions
---@field bAllowHidden boolean
---@field bAllowGroups boolean
---@field bAllowLegacyNotifications boolean
---@field bWarnIfLocked boolean
---@field ChildElementInclusionMethod ETypedElementChildInclusionMethod
FTypedElementSelectionOptions = {}

---@return FTypedElementSelectionOptions
function FTypedElementSelectionOptions:get() end



---@class FTypedElementSelectionSetState
---@field CreatedFromSelectionSet TWeakObjectPtr<UTypedElementSelectionSet>
FTypedElementSelectionSetState = {}

---@return FTypedElementSelectionSetState
function FTypedElementSelectionSetState:get() end



---@class ITypedElementAssetDataInterface : IInterface
ITypedElementAssetDataInterface = {}

---@return ITypedElementAssetDataInterface
function ITypedElementAssetDataInterface:get() end

---@param InElementHandle FScriptTypedElementHandle
---@return FAssetData
function ITypedElementAssetDataInterface:GetAssetData(InElementHandle) end
---@param InElementHandle FScriptTypedElementHandle
---@return TArray<FAssetData>
function ITypedElementAssetDataInterface:GetAllReferencedAssetDatas(InElementHandle) end


---@class ITypedElementHierarchyInterface : IInterface
ITypedElementHierarchyInterface = {}

---@return ITypedElementHierarchyInterface
function ITypedElementHierarchyInterface:get() end

---@param InElementHandle FScriptTypedElementHandle
---@param bAllowCreate boolean
---@return FScriptTypedElementHandle
function ITypedElementHierarchyInterface:GetParentElement(InElementHandle, bAllowCreate) end
---@param InElementHandle FScriptTypedElementHandle
---@param OutElementHandles TArray<FScriptTypedElementHandle>
---@param bAllowCreate boolean
function ITypedElementHierarchyInterface:GetChildElements(InElementHandle, OutElementHandles, bAllowCreate) end


---@class ITypedElementObjectInterface : IInterface
ITypedElementObjectInterface = {}

---@return ITypedElementObjectInterface
function ITypedElementObjectInterface:get() end

---@param InElementHandle FScriptTypedElementHandle
---@return UClass
function ITypedElementObjectInterface:GetObjectClass(InElementHandle) end
---@param InElementHandle FScriptTypedElementHandle
---@return UObject
function ITypedElementObjectInterface:GetObject(InElementHandle) end


---@class ITypedElementSelectionInterface : IInterface
ITypedElementSelectionInterface = {}

---@return ITypedElementSelectionInterface
function ITypedElementSelectionInterface:get() end

---@param InElementHandle FScriptTypedElementHandle
---@param InSelectionSet FScriptTypedElementListProxy
---@param InSelectionOptions FTypedElementSelectionOptions
---@return boolean
function ITypedElementSelectionInterface:SelectElement(InElementHandle, InSelectionSet, InSelectionOptions) end
---@param InElementHandle FScriptTypedElementHandle
---@param InSelectionSet FScriptTypedElementListProxy
---@param InSelectionOptions FTypedElementIsSelectedOptions
---@return boolean
function ITypedElementSelectionInterface:IsElementSelected(InElementHandle, InSelectionSet, InSelectionOptions) end
---@param InElementHandle FScriptTypedElementHandle
---@param InCurrentSelection FScriptTypedElementListProxy
---@param InSelectionMethod ETypedElementSelectionMethod
---@return FScriptTypedElementHandle
function ITypedElementSelectionInterface:GetSelectionElement(InElementHandle, InCurrentSelection, InSelectionMethod) end
---@param InElementHandle FScriptTypedElementHandle
---@param InSelectionSet FScriptTypedElementListProxy
---@param InSelectionOptions FTypedElementSelectionOptions
---@return boolean
function ITypedElementSelectionInterface:DeselectElement(InElementHandle, InSelectionSet, InSelectionOptions) end
---@param InElementHandle FScriptTypedElementHandle
---@param InSelectionOptions FTypedElementSelectionOptions
---@return boolean
function ITypedElementSelectionInterface:CanSelectElement(InElementHandle, InSelectionOptions) end
---@param InElementHandle FScriptTypedElementHandle
---@param InSelectionOptions FTypedElementSelectionOptions
---@return boolean
function ITypedElementSelectionInterface:CanDeselectElement(InElementHandle, InSelectionOptions) end
---@param InElementHandle FScriptTypedElementHandle
---@param InSelectionSet FScriptTypedElementListProxy
---@return boolean
function ITypedElementSelectionInterface:AllowSelectionModifiers(InElementHandle, InSelectionSet) end


---@class UTypedElementSelectionSet : UObject
---@field OnPreSelectionChange FTypedElementSelectionSetOnPreSelectionChange
---@field OnSelectionChange FTypedElementSelectionSetOnSelectionChange
UTypedElementSelectionSet = {}

---@return UTypedElementSelectionSet
function UTypedElementSelectionSet:get() end

---@param InElementHandles TArray<FScriptTypedElementHandle>
---@param InSelectionOptions FTypedElementSelectionOptions
---@return boolean
function UTypedElementSelectionSet:SetSelection(InElementHandles, InSelectionOptions) end
---@param InElementHandles TArray<FScriptTypedElementHandle>
---@param InSelectionOptions FTypedElementSelectionOptions
---@return boolean
function UTypedElementSelectionSet:SelectElements(InElementHandles, InSelectionOptions) end
---@param InElementHandle FScriptTypedElementHandle
---@param InSelectionOptions FTypedElementSelectionOptions
---@return boolean
function UTypedElementSelectionSet:SelectElement(InElementHandle, InSelectionOptions) end
---@param InSelectionState FTypedElementSelectionSetState
function UTypedElementSelectionSet:RestoreSelectionState(InSelectionState) end
---@param SelectionSet UTypedElementSelectionSet
function UTypedElementSelectionSet:OnPreChangeDynamic__DelegateSignature(SelectionSet) end
---@param SelectionSet UTypedElementSelectionSet
function UTypedElementSelectionSet:OnChangeDynamic__DelegateSignature(SelectionSet) end
---@param InBaseInterfaceType TSubclassOf<UInterface>
---@return TArray<FScriptTypedElementHandle>
function UTypedElementSelectionSet:K2_GetSelectedElementHandles(InBaseInterfaceType) end
---@param InElementHandle FScriptTypedElementHandle
---@param InSelectionOptions FTypedElementIsSelectedOptions
---@return boolean
function UTypedElementSelectionSet:IsElementSelected(InElementHandle, InSelectionOptions) end
---@param InRequiredClass UClass
---@return boolean
function UTypedElementSelectionSet:HasSelectedObjects(InRequiredClass) end
---@param InBaseInterfaceType TSubclassOf<UInterface>
---@return boolean
function UTypedElementSelectionSet:HasSelectedElements(InBaseInterfaceType) end
---@param InRequiredClass UClass
---@return UObject
function UTypedElementSelectionSet:GetTopSelectedObject(InRequiredClass) end
---@param InElementHandle FScriptTypedElementHandle
---@param InSelectionMethod ETypedElementSelectionMethod
---@return FScriptTypedElementHandle
function UTypedElementSelectionSet:GetSelectionElement(InElementHandle, InSelectionMethod) end
---@param InRequiredClass UClass
---@return TArray<UObject>
function UTypedElementSelectionSet:GetSelectedObjects(InRequiredClass) end
---@return int32
function UTypedElementSelectionSet:GetNumSelectedElements() end
---@return FTypedElementSelectionSetState
function UTypedElementSelectionSet:GetCurrentSelectionState() end
---@param InRequiredClass UClass
---@return UObject
function UTypedElementSelectionSet:GetBottomSelectedObject(InRequiredClass) end
---@param InElementHandles TArray<FScriptTypedElementHandle>
---@param InSelectionOptions FTypedElementSelectionOptions
---@return boolean
function UTypedElementSelectionSet:DeselectElements(InElementHandles, InSelectionOptions) end
---@param InElementHandle FScriptTypedElementHandle
---@param InSelectionOptions FTypedElementSelectionOptions
---@return boolean
function UTypedElementSelectionSet:DeselectElement(InElementHandle, InSelectionOptions) end
---@param InRequiredClass UClass
---@return int32
function UTypedElementSelectionSet:CountSelectedObjects(InRequiredClass) end
---@param InBaseInterfaceType TSubclassOf<UInterface>
---@return int32
function UTypedElementSelectionSet:CountSelectedElements(InBaseInterfaceType) end
---@param InSelectionOptions FTypedElementSelectionOptions
---@return boolean
function UTypedElementSelectionSet:ClearSelection(InSelectionOptions) end
---@param InElementHandle FScriptTypedElementHandle
---@param InSelectionOptions FTypedElementSelectionOptions
---@return boolean
function UTypedElementSelectionSet:CanSelectElement(InElementHandle, InSelectionOptions) end
---@param InElementHandle FScriptTypedElementHandle
---@param InSelectionOptions FTypedElementSelectionOptions
---@return boolean
function UTypedElementSelectionSet:CanDeselectElement(InElementHandle, InSelectionOptions) end
---@param InElementHandle FScriptTypedElementHandle
---@return boolean
function UTypedElementSelectionSet:AllowSelectionModifiers(InElementHandle) end


---@class UTypedElementSelectionSetLibrary : UObject
UTypedElementSelectionSetLibrary = {}

---@return UTypedElementSelectionSetLibrary
function UTypedElementSelectionSetLibrary:get() end

---@param SelectionSet UTypedElementSelectionSet
---@param ElementList FScriptTypedElementListProxy
---@param SelectionOptions FTypedElementSelectionOptions
---@return boolean
function UTypedElementSelectionSetLibrary:SetSelectionFromList(SelectionSet, ElementList, SelectionOptions) end
---@param SelectionSet UTypedElementSelectionSet
---@param ElementList FScriptTypedElementListProxy
---@param SelectionOptions FTypedElementSelectionOptions
---@return boolean
function UTypedElementSelectionSetLibrary:SelectElementsFromList(SelectionSet, ElementList, SelectionOptions) end
---@param SelectionSet UTypedElementSelectionSet
---@param NormalizationOptions FTypedElementSelectionNormalizationOptions
---@return FScriptTypedElementListProxy
function UTypedElementSelectionSetLibrary:GetNormalizedSelection(SelectionSet, NormalizationOptions) end
---@param SelectionSet UTypedElementSelectionSet
---@param ElementList FScriptTypedElementListProxy
---@param NormalizationOptions FTypedElementSelectionNormalizationOptions
---@return FScriptTypedElementListProxy
function UTypedElementSelectionSetLibrary:GetNormalizedElementList(SelectionSet, ElementList, NormalizationOptions) end
---@param SelectionSet UTypedElementSelectionSet
---@param ElementList FScriptTypedElementListProxy
---@param SelectionOptions FTypedElementSelectionOptions
---@return boolean
function UTypedElementSelectionSetLibrary:DeselectElementsFromList(SelectionSet, ElementList, SelectionOptions) end


