local Utils = {}

Utils["ModName"] = "PalboxSearch"

---@param message string
function Utils.log(message)
	print(string.format("[%s]: %s", Utils["ModName"], message))
end

return Utils
