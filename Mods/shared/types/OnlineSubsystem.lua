---@meta

---@class FNamedInterface
---@field InterfaceName FName
---@field InterfaceObject UObject
FNamedInterface = {}

---@return FNamedInterface
function FNamedInterface:get() end



---@class FNamedInterfaceDef
---@field InterfaceName FName
---@field InterfaceClassName FString
FNamedInterfaceDef = {}

---@return FNamedInterfaceDef
function FNamedInterfaceDef:get() end



---@class ITurnBasedMatchInterface : IInterface
ITurnBasedMatchInterface = {}

---@return ITurnBasedMatchInterface
function ITurnBasedMatchInterface:get() end

---@param Match FString
---@param bDidBecomeActive boolean
function ITurnBasedMatchInterface:OnMatchReceivedTurn(Match, bDidBecomeActive) end
---@param Match FString
function ITurnBasedMatchInterface:OnMatchEnded(Match) end


---@class UNamedInterfaces : UObject
---@field NamedInterfaces TArray<FNamedInterface>
---@field NamedInterfaceDefs TArray<FNamedInterfaceDef>
UNamedInterfaces = {}

---@return UNamedInterfaces
function UNamedInterfaces:get() end



