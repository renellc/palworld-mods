---@meta

---@class FRigVMBaseOp
FRigVMBaseOp = {}

---@return FRigVMBaseOp
function FRigVMBaseOp:get() end


---@class FRigVMBinaryOp : FRigVMBaseOp
FRigVMBinaryOp = {}

---@return FRigVMBinaryOp
function FRigVMBinaryOp:get() end


---@class FRigVMBreakpoint
FRigVMBreakpoint = {}

---@return FRigVMBreakpoint
function FRigVMBreakpoint:get() end


---@class FRigVMByteCode
---@field ByteCode TArray<uint8>
---@field NumInstructions int32
---@field Entries TArray<FRigVMByteCodeEntry>
FRigVMByteCode = {}

---@return FRigVMByteCode
function FRigVMByteCode:get() end



---@class FRigVMByteCodeEntry
---@field Name FName
---@field InstructionIndex int32
FRigVMByteCodeEntry = {}

---@return FRigVMByteCodeEntry
function FRigVMByteCodeEntry:get() end



---@class FRigVMByteCodeStatistics
---@field InstructionCount int32
---@field DataBytes int32
FRigVMByteCodeStatistics = {}

---@return FRigVMByteCodeStatistics
function FRigVMByteCodeStatistics:get() end



---@class FRigVMChangeTypeOp : FRigVMUnaryOp
FRigVMChangeTypeOp = {}

---@return FRigVMChangeTypeOp
function FRigVMChangeTypeOp:get() end


---@class FRigVMComparisonOp : FRigVMBaseOp
FRigVMComparisonOp = {}

---@return FRigVMComparisonOp
function FRigVMComparisonOp:get() end


---@class FRigVMCopyOp : FRigVMBaseOp
FRigVMCopyOp = {}

---@return FRigVMCopyOp
function FRigVMCopyOp:get() end


---@class FRigVMDebugInfo
FRigVMDebugInfo = {}

---@return FRigVMDebugInfo
function FRigVMDebugInfo:get() end


---@class FRigVMDispatchFactory
FRigVMDispatchFactory = {}

---@return FRigVMDispatchFactory
function FRigVMDispatchFactory:get() end


---@class FRigVMExecuteContext
FRigVMExecuteContext = {}

---@return FRigVMExecuteContext
function FRigVMExecuteContext:get() end


---@class FRigVMExecuteOp : FRigVMBaseOp
FRigVMExecuteOp = {}

---@return FRigVMExecuteOp
function FRigVMExecuteOp:get() end


---@class FRigVMExtendedExecuteContext
FRigVMExtendedExecuteContext = {}

---@return FRigVMExtendedExecuteContext
function FRigVMExtendedExecuteContext:get() end


---@class FRigVMInstruction
---@field ByteCodeIndex uint64
---@field OpCode ERigVMOpCode
---@field OperandAlignment uint8
FRigVMInstruction = {}

---@return FRigVMInstruction
function FRigVMInstruction:get() end



---@class FRigVMInstructionArray
---@field Instructions TArray<FRigVMInstruction>
FRigVMInstructionArray = {}

---@return FRigVMInstructionArray
function FRigVMInstructionArray:get() end



---@class FRigVMInvokeEntryOp : FRigVMBaseOp
FRigVMInvokeEntryOp = {}

---@return FRigVMInvokeEntryOp
function FRigVMInvokeEntryOp:get() end


---@class FRigVMJumpIfOp : FRigVMUnaryOp
FRigVMJumpIfOp = {}

---@return FRigVMJumpIfOp
function FRigVMJumpIfOp:get() end


---@class FRigVMJumpOp : FRigVMBaseOp
FRigVMJumpOp = {}

---@return FRigVMJumpOp
function FRigVMJumpOp:get() end


---@class FRigVMMemoryContainer
---@field bUseNameMap boolean
---@field MemoryType ERigVMMemoryType
---@field Registers TArray<FRigVMRegister>
---@field RegisterOffsets TArray<FRigVMRegisterOffset>
---@field Data TArray<uint8>
---@field ScriptStructs TArray<UScriptStruct>
---@field NameMap TMap<FName, int32>
---@field bEncounteredErrorDuringLoad boolean
FRigVMMemoryContainer = {}

---@return FRigVMMemoryContainer
function FRigVMMemoryContainer:get() end



---@class FRigVMMemoryStatistics
---@field RegisterCount int32
---@field DataBytes int32
---@field TotalBytes int32
FRigVMMemoryStatistics = {}

---@return FRigVMMemoryStatistics
function FRigVMMemoryStatistics:get() end



---@class FRigVMOperand
---@field MemoryType ERigVMMemoryType
---@field RegisterIndex uint16
---@field RegisterOffset uint16
FRigVMOperand = {}

---@return FRigVMOperand
function FRigVMOperand:get() end



---@class FRigVMParameter
---@field Type ERigVMParameterType
---@field Name FName
---@field RegisterIndex int32
---@field CPPType FString
---@field ScriptStruct UScriptStruct
---@field ScriptStructPath FName
FRigVMParameter = {}

---@return FRigVMParameter
function FRigVMParameter:get() end



---@class FRigVMQuaternaryOp : FRigVMBaseOp
FRigVMQuaternaryOp = {}

---@return FRigVMQuaternaryOp
function FRigVMQuaternaryOp:get() end


---@class FRigVMQuinaryOp : FRigVMBaseOp
FRigVMQuinaryOp = {}

---@return FRigVMQuinaryOp
function FRigVMQuinaryOp:get() end


---@class FRigVMRegister
---@field Type ERigVMRegisterType
---@field ByteIndex uint32
---@field ElementSize uint16
---@field ElementCount uint16
---@field SliceCount uint16
---@field AlignmentBytes uint8
---@field TrailingBytes uint16
---@field Name FName
---@field ScriptStructIndex int32
---@field bIsArray boolean
---@field bIsDynamic boolean
FRigVMRegister = {}

---@return FRigVMRegister
function FRigVMRegister:get() end



---@class FRigVMRegisterOffset
---@field Segments TArray<int32>
---@field Type ERigVMRegisterType
---@field CPPType FName
---@field ScriptStruct UScriptStruct
---@field ParentScriptStruct UScriptStruct
---@field ArrayIndex int32
---@field ElementSize uint16
---@field CachedSegmentPath FString
FRigVMRegisterOffset = {}

---@return FRigVMRegisterOffset
function FRigVMRegisterOffset:get() end



---@class FRigVMRuntimeSettings
---@field MaximumArraySize int32
FRigVMRuntimeSettings = {}

---@return FRigVMRuntimeSettings
function FRigVMRuntimeSettings:get() end



---@class FRigVMSenaryOp : FRigVMBaseOp
FRigVMSenaryOp = {}

---@return FRigVMSenaryOp
function FRigVMSenaryOp:get() end


---@class FRigVMSlice
FRigVMSlice = {}

---@return FRigVMSlice
function FRigVMSlice:get() end


---@class FRigVMStatistics
---@field BytesForCDO int32
---@field BytesPerInstance int32
---@field LiteralMemory FRigVMMemoryStatistics
---@field WorkMemory FRigVMMemoryStatistics
---@field DebugMemory FRigVMMemoryStatistics
---@field BytesForCaching int32
---@field ByteCode FRigVMByteCodeStatistics
FRigVMStatistics = {}

---@return FRigVMStatistics
function FRigVMStatistics:get() end



---@class FRigVMStruct
FRigVMStruct = {}

---@return FRigVMStruct
function FRigVMStruct:get() end


---@class FRigVMTemplateArgumentType
---@field CPPType FName
---@field CPPTypeObject UObject
FRigVMTemplateArgumentType = {}

---@return FRigVMTemplateArgumentType
function FRigVMTemplateArgumentType:get() end



---@class FRigVMTernaryOp : FRigVMBaseOp
FRigVMTernaryOp = {}

---@return FRigVMTernaryOp
function FRigVMTernaryOp:get() end


---@class FRigVMUnaryOp : FRigVMBaseOp
FRigVMUnaryOp = {}

---@return FRigVMUnaryOp
function FRigVMUnaryOp:get() end


---@class FRigVMUnknownType
---@field Hash uint32
FRigVMUnknownType = {}

---@return FRigVMUnknownType
function FRigVMUnknownType:get() end



---@class FRigVMUserWorkflow
---@field Title FString
---@field Tooltip FString
---@field Type ERigVMUserWorkflowType
---@field PerformDynamicDelegate FRigVMUserWorkflowPerformDynamicDelegate
---@field OptionsClass TObjectPtr<UClass>
FRigVMUserWorkflow = {}

---@return FRigVMUserWorkflow
function FRigVMUserWorkflow:get() end



---@class UDefault__RigVMMemoryStorageGeneratorClass
UDefault__RigVMMemoryStorageGeneratorClass = {}

---@return UDefault__RigVMMemoryStorageGeneratorClass
function UDefault__RigVMMemoryStorageGeneratorClass:get() end


---@class URigVM : UObject
---@field WorkMemoryStorageObject URigVMMemoryStorage
---@field LiteralMemoryStorageObject URigVMMemoryStorage
---@field DebugMemoryStorageObject URigVMMemoryStorage
---@field ByteCodeStorage FRigVMByteCode
---@field Instructions FRigVMInstructionArray
---@field Context FRigVMExtendedExecuteContext
---@field NumExecutions uint32
---@field FunctionNamesStorage TArray<FName>
---@field Parameters TArray<FRigVMParameter>
---@field ParametersNameMap TMap<FName, int32>
---@field DeferredVMToCopy URigVM
URigVM = {}

---@return URigVM
function URigVM:get() end

---@param InParameterName FName
---@param InValue FVector2D
---@param InArrayIndex int32
function URigVM:SetParameterValueVector2D(InParameterName, InValue, InArrayIndex) end
---@param InParameterName FName
---@param InValue FVector
---@param InArrayIndex int32
function URigVM:SetParameterValueVector(InParameterName, InValue, InArrayIndex) end
---@param InParameterName FName
---@param InValue FTransform
---@param InArrayIndex int32
function URigVM:SetParameterValueTransform(InParameterName, InValue, InArrayIndex) end
---@param InParameterName FName
---@param InValue FString
---@param InArrayIndex int32
function URigVM:SetParameterValueString(InParameterName, InValue, InArrayIndex) end
---@param InParameterName FName
---@param InValue FQuat
---@param InArrayIndex int32
function URigVM:SetParameterValueQuat(InParameterName, InValue, InArrayIndex) end
---@param InParameterName FName
---@param InValue FName
---@param InArrayIndex int32
function URigVM:SetParameterValueName(InParameterName, InValue, InArrayIndex) end
---@param InParameterName FName
---@param InValue int32
---@param InArrayIndex int32
function URigVM:SetParameterValueInt(InParameterName, InValue, InArrayIndex) end
---@param InParameterName FName
---@param InValue float
---@param InArrayIndex int32
function URigVM:SetParameterValueFloat(InParameterName, InValue, InArrayIndex) end
---@param InParameterName FName
---@param InValue double
---@param InArrayIndex int32
function URigVM:SetParameterValueDouble(InParameterName, InValue, InArrayIndex) end
---@param InParameterName FName
---@param InValue boolean
---@param InArrayIndex int32
function URigVM:SetParameterValueBool(InParameterName, InValue, InArrayIndex) end
---@return FRigVMStatistics
function URigVM:GetStatistics() end
---@param InFunctionIndex int32
---@return FString
function URigVM:GetRigVMFunctionName(InFunctionIndex) end
---@param InParameterName FName
---@param InArrayIndex int32
---@return FVector2D
function URigVM:GetParameterValueVector2D(InParameterName, InArrayIndex) end
---@param InParameterName FName
---@param InArrayIndex int32
---@return FVector
function URigVM:GetParameterValueVector(InParameterName, InArrayIndex) end
---@param InParameterName FName
---@param InArrayIndex int32
---@return FTransform
function URigVM:GetParameterValueTransform(InParameterName, InArrayIndex) end
---@param InParameterName FName
---@param InArrayIndex int32
---@return FString
function URigVM:GetParameterValueString(InParameterName, InArrayIndex) end
---@param InParameterName FName
---@param InArrayIndex int32
---@return FQuat
function URigVM:GetParameterValueQuat(InParameterName, InArrayIndex) end
---@param InParameterName FName
---@param InArrayIndex int32
---@return FName
function URigVM:GetParameterValueName(InParameterName, InArrayIndex) end
---@param InParameterName FName
---@param InArrayIndex int32
---@return int32
function URigVM:GetParameterValueInt(InParameterName, InArrayIndex) end
---@param InParameterName FName
---@param InArrayIndex int32
---@return float
function URigVM:GetParameterValueFloat(InParameterName, InArrayIndex) end
---@param InParameterName FName
---@param InArrayIndex int32
---@return double
function URigVM:GetParameterValueDouble(InParameterName, InArrayIndex) end
---@param InParameterName FName
---@param InArrayIndex int32
---@return boolean
function URigVM:GetParameterValueBool(InParameterName, InArrayIndex) end
---@param InEntryName FName
---@return boolean
function URigVM:Execute(InEntryName) end
---@param InRigVMStruct UScriptStruct
---@param InMethodName FName
---@return int32
function URigVM:AddRigVMFunction(InRigVMStruct, InMethodName) end


---@class URigVMMemoryStorage : UObject
URigVMMemoryStorage = {}

---@return URigVMMemoryStorage
function URigVMMemoryStorage:get() end


---@class URigVMMemoryStorageGeneratorClass : UClass
URigVMMemoryStorageGeneratorClass = {}

---@return URigVMMemoryStorageGeneratorClass
function URigVMMemoryStorageGeneratorClass:get() end


---@class URigVMNativized : URigVM
URigVMNativized = {}

---@return URigVMNativized
function URigVMNativized:get() end


---@class URigVMUserWorkflowOptions : UObject
---@field Subject UObject
---@field Workflow FRigVMUserWorkflow
URigVMUserWorkflowOptions = {}

---@return URigVMUserWorkflowOptions
function URigVMUserWorkflowOptions:get() end

---@return boolean
function URigVMUserWorkflowOptions:RequiresDialog() end
---@param InMessage FString
function URigVMUserWorkflowOptions:ReportWarning(InMessage) end
---@param InMessage FString
function URigVMUserWorkflowOptions:ReportInfo(InMessage) end
---@param InMessage FString
function URigVMUserWorkflowOptions:ReportError(InMessage) end
---@return boolean
function URigVMUserWorkflowOptions:IsValid() end


