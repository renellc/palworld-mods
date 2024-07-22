local Utils = {}

Utils["ModName"] = "PalboxSearch"

---@param message string
function Utils.log(message)
	print(string.format("[%s]: %s", Utils["ModName"], message))
end

---@param str string
function Utils.trim(str)
	return str:match("^%s*(.-)%s*$")
end

return Utils
