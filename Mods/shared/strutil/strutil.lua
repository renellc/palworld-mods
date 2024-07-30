local strutil = {}

--- Removes the leading and following whitespace from a string
---@param str string The string to trim
---@return string
function strutil.trim(str)
    return str:match("^%s*(.-)%s*$")
end

--- Splits a given string with a specified separator
---@param str string The string to split
---@param sep string The separator between the words
---@return string[]
function strutil.split(str, sep)
    local words = {}

    for word in string.gmatch(str, "[^" .. sep .. "]*") do
        table.insert(words, word)
    end

    return words
end

return strutil
