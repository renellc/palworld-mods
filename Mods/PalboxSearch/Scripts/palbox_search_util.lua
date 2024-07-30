local Utils = {}

Utils["ModName"] = "PalboxSearch"

---@param message any
function Utils.log(message)
	print(string.format("[%s]: %s", Utils["ModName"], message))
end

return Utils
