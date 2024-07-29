---@meta

---@class FCustomMeshTriangle
---@field Vertex0 FVector
---@field Vertex1 FVector
---@field Vertex2 FVector
FCustomMeshTriangle = {}

---@return FCustomMeshTriangle
function FCustomMeshTriangle:get() end



---@class UCustomMeshComponent : UMeshComponent
UCustomMeshComponent = {}

---@return UCustomMeshComponent
function UCustomMeshComponent:get() end

---@param Triangles TArray<FCustomMeshTriangle>
---@return boolean
function UCustomMeshComponent:SetCustomMeshTriangles(Triangles) end
function UCustomMeshComponent:ClearCustomMeshTriangles() end
---@param Triangles TArray<FCustomMeshTriangle>
function UCustomMeshComponent:AddCustomMeshTriangles(Triangles) end


