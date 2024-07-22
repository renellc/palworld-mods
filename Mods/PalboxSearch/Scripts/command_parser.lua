local UTILS = require("palbox_search_util")

local CommandParser = {}

CommandParser.Prefix = "!"

CommandParser.CommandName = "pbs"

CommandParser.ArgumentPrefix = "-"

CommandParser.ArgumentName = {
	PAL = "pal",
	PASSIVES = "passives"
}

---@param str string
function CommandParser.parse(str)
	local input = string.lower(UTILS.trim(str))

	local input_parts = {}
	for w in string.gmatch(input, "%S+") do
		table.insert(input_parts, w)
	end

	local command_start = CommandParser.Prefix .. CommandParser.CommandName

	if #input_parts == 0 or input_parts[1] ~= command_start then
		error("Input does not start with the proper command start")
	end

	local args = {
		pal = nil,
		passives = nil,
	}

	for i = 2, #input_parts, 2 do
		if string.sub(input_parts[i], 1, 1) ~= "-" then
			goto continue
		end

		if i + 1 > #input_parts then
			goto continue
		end

		local arg_val = input_parts[i + 1]

		if input_parts[i] == CommandParser.ArgumentPrefix .. CommandParser.ArgumentName.PAL then
			if string.sub(arg_val, 1, 1) ~= "-" then
				args.pal = arg_val
			end
		elseif input_parts[i] == CommandParser.ArgumentPrefix .. CommandParser.ArgumentName.PASSIVES then
			if string.sub(arg_val, 1, 1) ~= "-" then
				args.passives = arg_val
			end
		end

		::continue::
	end

	return args
end

return CommandParser
