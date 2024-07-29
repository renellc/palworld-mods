local Utils = {}

Utils["ModName"] = "PalboxSearch"

---@param message any
function Utils.log(message)
	print(string.format("[%s]: %s", Utils["ModName"], message))
end

---@param str string
function Utils.trim(str)
	return str:match("^%s*(.-)%s*$")
end

---@param str string
---@param sep string
---@return string[]
function Utils.split(str, sep)
	local words = {}

	local curr_word = {}
	for i = 1, #str do
		local char = string.sub(str, i, i)
		if char == sep then
			table.insert(words, table.concat(curr_word, ""))
			curr_word = {}
		else
			table.insert(curr_word, char)
		end
	end

	if #curr_word > 0 then
		table.insert(words, table.concat(curr_word, ""))
	end

	return words
end

return Utils
