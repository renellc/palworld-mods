---@meta

---@class FClothCollisionData
---@field Spheres TArray<FClothCollisionPrim_Sphere>
---@field SphereConnections TArray<FClothCollisionPrim_SphereConnection>
---@field Convexes TArray<FClothCollisionPrim_Convex>
---@field Boxes TArray<FClothCollisionPrim_Box>
FClothCollisionData = {}

---@return FClothCollisionData
function FClothCollisionData:get() end



---@class FClothCollisionPrim_Box
---@field LocalPosition FVector
---@field LocalRotation FQuat
---@field HalfExtents FVector
---@field BoneIndex int32
FClothCollisionPrim_Box = {}

---@return FClothCollisionPrim_Box
function FClothCollisionPrim_Box:get() end



---@class FClothCollisionPrim_Convex
---@field Faces TArray<FClothCollisionPrim_ConvexFace>
---@field SurfacePoints TArray<FVector>
---@field BoneIndex int32
FClothCollisionPrim_Convex = {}

---@return FClothCollisionPrim_Convex
function FClothCollisionPrim_Convex:get() end



---@class FClothCollisionPrim_ConvexFace
---@field Plane FPlane
---@field Indices TArray<int32>
FClothCollisionPrim_ConvexFace = {}

---@return FClothCollisionPrim_ConvexFace
function FClothCollisionPrim_ConvexFace:get() end



---@class FClothCollisionPrim_Sphere
---@field BoneIndex int32
---@field Radius float
---@field LocalPosition FVector
FClothCollisionPrim_Sphere = {}

---@return FClothCollisionPrim_Sphere
function FClothCollisionPrim_Sphere:get() end



---@class FClothCollisionPrim_SphereConnection
---@field SphereIndices int32
FClothCollisionPrim_SphereConnection = {}

---@return FClothCollisionPrim_SphereConnection
function FClothCollisionPrim_SphereConnection:get() end



---@class FClothVertBoneData
---@field NumInfluences int32
---@field BoneIndices uint16
---@field BoneWeights float
FClothVertBoneData = {}

---@return FClothVertBoneData
function FClothVertBoneData:get() end



---@class UClothConfigBase : UObject
UClothConfigBase = {}

---@return UClothConfigBase
function UClothConfigBase:get() end


---@class UClothPhysicalMeshDataBase_Legacy : UObject
---@field Vertices TArray<FVector3f>
---@field normals TArray<FVector3f>
---@field Indices TArray<uint32>
---@field InverseMasses TArray<float>
---@field BoneData TArray<FClothVertBoneData>
---@field NumFixedVerts int32
---@field MaxBoneWeights int32
---@field SelfCollisionIndices TArray<uint32>
UClothPhysicalMeshDataBase_Legacy = {}

---@return UClothPhysicalMeshDataBase_Legacy
function UClothPhysicalMeshDataBase_Legacy:get() end



---@class UClothingAssetBase : UObject
---@field ImportedFilePath FString
---@field AssetGuid FGuid
UClothingAssetBase = {}

---@return UClothingAssetBase
function UClothingAssetBase:get() end



---@class UClothingInteractor : UObject
UClothingInteractor = {}

---@return UClothingInteractor
function UClothingInteractor:get() end


---@class UClothingSimulationFactory : UObject
UClothingSimulationFactory = {}

---@return UClothingSimulationFactory
function UClothingSimulationFactory:get() end


---@class UClothingSimulationInteractor : UObject
---@field ClothingInteractors TMap<FName, UClothingInteractor>
UClothingSimulationInteractor = {}

---@return UClothingSimulationInteractor
function UClothingSimulationInteractor:get() end

---@param NumSubsteps int32
function UClothingSimulationInteractor:SetNumSubsteps(NumSubsteps) end
---@param NumIterations int32
function UClothingSimulationInteractor:SetNumIterations(NumIterations) end
---@param MaxNumIterations int32
function UClothingSimulationInteractor:SetMaxNumIterations(MaxNumIterations) end
---@param InStiffness float
function UClothingSimulationInteractor:SetAnimDriveSpringStiffness(InStiffness) end
function UClothingSimulationInteractor:PhysicsAssetUpdated() end
---@return float
function UClothingSimulationInteractor:GetSimulationTime() end
---@return int32
function UClothingSimulationInteractor:GetNumSubsteps() end
---@return int32
function UClothingSimulationInteractor:GetNumKinematicParticles() end
---@return int32
function UClothingSimulationInteractor:GetNumIterations() end
---@return int32
function UClothingSimulationInteractor:GetNumDynamicParticles() end
---@return int32
function UClothingSimulationInteractor:GetNumCloths() end
---@param ClothingAssetName FString
---@return UClothingInteractor
function UClothingSimulationInteractor:GetClothingInteractor(ClothingAssetName) end
---@param InVector FVector
function UClothingSimulationInteractor:EnableGravityOverride(InVector) end
function UClothingSimulationInteractor:DisableGravityOverride() end
function UClothingSimulationInteractor:ClothConfigUpdated() end


---@class UDEPRECATED_ClothSharedSimConfigBase : UObject
UDEPRECATED_ClothSharedSimConfigBase = {}

---@return UDEPRECATED_ClothSharedSimConfigBase
function UDEPRECATED_ClothSharedSimConfigBase:get() end


