---@meta

---@class FGetSkeletalMeshDataflowNode : FDataflowNode
---@field SkeletalMesh USkeletalMesh
---@field PropertyName FName
FGetSkeletalMeshDataflowNode = {}

---@return FGetSkeletalMeshDataflowNode
function FGetSkeletalMeshDataflowNode:get() end



---@class FGetStaticMeshDataflowNode : FDataflowNode
---@field StaticMesh UStaticMesh
---@field PropertyName FName
FGetStaticMeshDataflowNode = {}

---@return FGetStaticMeshDataflowNode
function FGetStaticMeshDataflowNode:get() end



---@class FSkeletalMeshBoneDataflowNode : FDataflowNode
---@field BoneName FName
---@field SkeletalMesh USkeletalMesh
---@field BoneIndexOut int32
FSkeletalMeshBoneDataflowNode = {}

---@return FSkeletalMeshBoneDataflowNode
function FSkeletalMeshBoneDataflowNode:get() end



