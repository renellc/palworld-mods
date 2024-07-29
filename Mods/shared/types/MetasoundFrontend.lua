---@meta

---@class FMetasoundFrontendClass
---@field ID FGuid
---@field MetaData FMetasoundFrontendClassMetadata
---@field Interface FMetasoundFrontendClassInterface
FMetasoundFrontendClass = {}

---@return FMetasoundFrontendClass
function FMetasoundFrontendClass:get() end



---@class FMetasoundFrontendClassEnvironmentVariable
---@field Name FName
---@field TypeName FName
---@field bIsRequired boolean
FMetasoundFrontendClassEnvironmentVariable = {}

---@return FMetasoundFrontendClassEnvironmentVariable
function FMetasoundFrontendClassEnvironmentVariable:get() end



---@class FMetasoundFrontendClassInput : FMetasoundFrontendClassVertex
---@field DefaultLiteral FMetasoundFrontendLiteral
FMetasoundFrontendClassInput = {}

---@return FMetasoundFrontendClassInput
function FMetasoundFrontendClassInput:get() end



---@class FMetasoundFrontendClassInterface
---@field Inputs TArray<FMetasoundFrontendClassInput>
---@field Outputs TArray<FMetasoundFrontendClassOutput>
---@field Environment TArray<FMetasoundFrontendClassEnvironmentVariable>
---@field ChangeID FGuid
FMetasoundFrontendClassInterface = {}

---@return FMetasoundFrontendClassInterface
function FMetasoundFrontendClassInterface:get() end



---@class FMetasoundFrontendClassMetadata
---@field ClassName FMetasoundFrontendClassName
---@field Version FMetasoundFrontendVersionNumber
---@field Type EMetasoundFrontendClassType
---@field bIsDeprecated boolean
---@field bAutoUpdateManagesInterface boolean
---@field ChangeID FGuid
FMetasoundFrontendClassMetadata = {}

---@return FMetasoundFrontendClassMetadata
function FMetasoundFrontendClassMetadata:get() end



---@class FMetasoundFrontendClassName
---@field Namespace FName
---@field Name FName
---@field Variant FName
FMetasoundFrontendClassName = {}

---@return FMetasoundFrontendClassName
function FMetasoundFrontendClassName:get() end



---@class FMetasoundFrontendClassOutput : FMetasoundFrontendClassVertex
FMetasoundFrontendClassOutput = {}

---@return FMetasoundFrontendClassOutput
function FMetasoundFrontendClassOutput:get() end


---@class FMetasoundFrontendClassStyle
FMetasoundFrontendClassStyle = {}

---@return FMetasoundFrontendClassStyle
function FMetasoundFrontendClassStyle:get() end


---@class FMetasoundFrontendClassStyleDisplay
FMetasoundFrontendClassStyleDisplay = {}

---@return FMetasoundFrontendClassStyleDisplay
function FMetasoundFrontendClassStyleDisplay:get() end


---@class FMetasoundFrontendClassVariable : FMetasoundFrontendClassVertex
---@field DefaultLiteral FMetasoundFrontendLiteral
FMetasoundFrontendClassVariable = {}

---@return FMetasoundFrontendClassVariable
function FMetasoundFrontendClassVariable:get() end



---@class FMetasoundFrontendClassVertex : FMetasoundFrontendVertex
---@field NodeID FGuid
---@field AccessType EMetasoundFrontendVertexAccessType
FMetasoundFrontendClassVertex = {}

---@return FMetasoundFrontendClassVertex
function FMetasoundFrontendClassVertex:get() end



---@class FMetasoundFrontendDocument
---@field MetaData FMetasoundFrontendDocumentMetadata
---@field Interfaces TSet<FMetasoundFrontendVersion>
---@field RootGraph FMetasoundFrontendGraphClass
---@field Subgraphs TArray<FMetasoundFrontendGraphClass>
---@field Dependencies TArray<FMetasoundFrontendClass>
---@field ArchetypeVersion FMetasoundFrontendVersion
---@field InterfaceVersions TArray<FMetasoundFrontendVersion>
FMetasoundFrontendDocument = {}

---@return FMetasoundFrontendDocument
function FMetasoundFrontendDocument:get() end



---@class FMetasoundFrontendDocumentMetadata
---@field Version FMetasoundFrontendVersion
FMetasoundFrontendDocumentMetadata = {}

---@return FMetasoundFrontendDocumentMetadata
function FMetasoundFrontendDocumentMetadata:get() end



---@class FMetasoundFrontendEdge
---@field FromNodeID FGuid
---@field FromVertexID FGuid
---@field ToNodeID FGuid
---@field ToVertexID FGuid
FMetasoundFrontendEdge = {}

---@return FMetasoundFrontendEdge
function FMetasoundFrontendEdge:get() end



---@class FMetasoundFrontendEdgeStyle
---@field NodeID FGuid
---@field OutputName FName
---@field LiteralColorPairs TArray<FMetasoundFrontendEdgeStyleLiteralColorPair>
FMetasoundFrontendEdgeStyle = {}

---@return FMetasoundFrontendEdgeStyle
function FMetasoundFrontendEdgeStyle:get() end



---@class FMetasoundFrontendEdgeStyleLiteralColorPair
---@field Value FMetasoundFrontendLiteral
---@field Color FLinearColor
FMetasoundFrontendEdgeStyleLiteralColorPair = {}

---@return FMetasoundFrontendEdgeStyleLiteralColorPair
function FMetasoundFrontendEdgeStyleLiteralColorPair:get() end



---@class FMetasoundFrontendGraph
---@field Nodes TArray<FMetasoundFrontendNode>
---@field Edges TArray<FMetasoundFrontendEdge>
---@field Variables TArray<FMetasoundFrontendVariable>
FMetasoundFrontendGraph = {}

---@return FMetasoundFrontendGraph
function FMetasoundFrontendGraph:get() end



---@class FMetasoundFrontendGraphClass : FMetasoundFrontendClass
---@field Graph FMetasoundFrontendGraph
---@field PresetOptions FMetasoundFrontendGraphClassPresetOptions
FMetasoundFrontendGraphClass = {}

---@return FMetasoundFrontendGraphClass
function FMetasoundFrontendGraphClass:get() end



---@class FMetasoundFrontendGraphClassPresetOptions
---@field bIsPreset boolean
---@field InputsInheritingDefault TSet<FName>
FMetasoundFrontendGraphClassPresetOptions = {}

---@return FMetasoundFrontendGraphClassPresetOptions
function FMetasoundFrontendGraphClassPresetOptions:get() end



---@class FMetasoundFrontendGraphStyle
---@field bIsGraphEditable boolean
---@field EdgeStyles TArray<FMetasoundFrontendEdgeStyle>
FMetasoundFrontendGraphStyle = {}

---@return FMetasoundFrontendGraphStyle
function FMetasoundFrontendGraphStyle:get() end



---@class FMetasoundFrontendInterface : FMetasoundFrontendClassInterface
---@field Version FMetasoundFrontendVersion
FMetasoundFrontendInterface = {}

---@return FMetasoundFrontendInterface
function FMetasoundFrontendInterface:get() end



---@class FMetasoundFrontendInterfaceStyle
FMetasoundFrontendInterfaceStyle = {}

---@return FMetasoundFrontendInterfaceStyle
function FMetasoundFrontendInterfaceStyle:get() end


---@class FMetasoundFrontendLiteral
---@field Type EMetasoundFrontendLiteralType
---@field AsNumDefault int32
---@field AsBoolean TArray<boolean>
---@field AsInteger TArray<int32>
---@field AsFloat TArray<float>
---@field AsString TArray<FString>
---@field AsUObject TArray<UObject>
FMetasoundFrontendLiteral = {}

---@return FMetasoundFrontendLiteral
function FMetasoundFrontendLiteral:get() end



---@class FMetasoundFrontendNode
---@field ID FGuid
---@field ClassID FGuid
---@field Name FName
---@field Interface FMetasoundFrontendNodeInterface
---@field InputLiterals TArray<FMetasoundFrontendVertexLiteral>
FMetasoundFrontendNode = {}

---@return FMetasoundFrontendNode
function FMetasoundFrontendNode:get() end



---@class FMetasoundFrontendNodeInterface
---@field Inputs TArray<FMetasoundFrontendVertex>
---@field Outputs TArray<FMetasoundFrontendVertex>
---@field Environment TArray<FMetasoundFrontendVertex>
FMetasoundFrontendNodeInterface = {}

---@return FMetasoundFrontendNodeInterface
function FMetasoundFrontendNodeInterface:get() end



---@class FMetasoundFrontendNodeStyle
FMetasoundFrontendNodeStyle = {}

---@return FMetasoundFrontendNodeStyle
function FMetasoundFrontendNodeStyle:get() end


---@class FMetasoundFrontendNodeStyleDisplay
FMetasoundFrontendNodeStyleDisplay = {}

---@return FMetasoundFrontendNodeStyleDisplay
function FMetasoundFrontendNodeStyleDisplay:get() end


---@class FMetasoundFrontendVariable
---@field Name FName
---@field TypeName FName
---@field Literal FMetasoundFrontendLiteral
---@field ID FGuid
---@field VariableNodeID FGuid
---@field MutatorNodeID FGuid
---@field AccessorNodeIDs TArray<FGuid>
---@field DeferredAccessorNodeIDs TArray<FGuid>
FMetasoundFrontendVariable = {}

---@return FMetasoundFrontendVariable
function FMetasoundFrontendVariable:get() end



---@class FMetasoundFrontendVersion
---@field Name FName
---@field Number FMetasoundFrontendVersionNumber
FMetasoundFrontendVersion = {}

---@return FMetasoundFrontendVersion
function FMetasoundFrontendVersion:get() end



---@class FMetasoundFrontendVersionNumber
---@field Major int32
---@field Minor int32
FMetasoundFrontendVersionNumber = {}

---@return FMetasoundFrontendVersionNumber
function FMetasoundFrontendVersionNumber:get() end



---@class FMetasoundFrontendVertex
---@field Name FName
---@field TypeName FName
---@field VertexID FGuid
FMetasoundFrontendVertex = {}

---@return FMetasoundFrontendVertex
function FMetasoundFrontendVertex:get() end



---@class FMetasoundFrontendVertexLiteral
---@field VertexID FGuid
---@field Value FMetasoundFrontendLiteral
FMetasoundFrontendVertexLiteral = {}

---@return FMetasoundFrontendVertexLiteral
function FMetasoundFrontendVertexLiteral:get() end



---@class FMetasoundFrontendVertexMetadata
FMetasoundFrontendVertexMetadata = {}

---@return FMetasoundFrontendVertexMetadata
function FMetasoundFrontendVertexMetadata:get() end


