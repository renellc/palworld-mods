local pal_helpers = require("PalHelpers")

local chat_message_getter = {}

-- Define a callback variable
local onCloseChatCallback = {} ---@type function[]

local in_game_chat_object

-- Function to set the callback
---@param callback fun(message: string)
function chat_message_getter.add_message_callback(callback)
    table.insert(onCloseChatCallback, callback)
end

---@param callback fun(message: string) | string
function chat_message_getter.remove_message_callback(callback)
    --TODO: Implemnt function to remove callbacks
end

local current_message = ""

local editable_text_instance ---@type UEditableText


local function init_chat_getter()
    local pre_id, post_id
    pre_id, post_id = RegisterHook("/Game/Pal/Blueprint/UI/UserInterface/InGame/Chat/WBP_Ingame_Chat.WBP_Ingame_Chat_C:ShowChatInputUI", function()
        print(in_game_chat_object:GetFullName())
        local editable_text_instances = FindAllOf("EditableText") ---@type UEditableText[]?
        if not editable_text_instances then
            error("No editable_text_instances were found")
            return
        else
            for _, editable_text in pairs(editable_text_instances) do
                if string.match(editable_text:GetFullName(), "EditableText /Engine/Transient.GameEngine(.-)EditableText_ChatInput") then
                    editable_text_instance = editable_text
                end
            end
        end
        UnregisterHook("/Game/Pal/Blueprint/UI/UserInterface/InGame/Chat/WBP_Ingame_Chat.WBP_Ingame_Chat_C:ShowChatInputUI", pre_id, post_id)
    end)
end

local function init_trigger()
    LoopAsync(1000, function()
        in_game_chat_object = FindObject("WBP_Ingame_Chat_C", nil, "Engine", EObjectFlags.RF_NoFlags)
        if in_game_chat_object:IsValid() then
            init_chat_getter()
            return true
        else
            return false
        end
    end)
end
pal_helpers.SafeInitialize(init_trigger, 'client')

if IsKeyBindRegistered(Key.S, {ModifierKey.ALT}) == false then
    RegisterKeyBind(Key.S, {ModifierKey.ALT}, function()
        current_message = editable_text_instance:GetText():ToString()
        editable_text_instance:SetText(FText(""))
        ExecuteWithDelay(200, function()
            in_game_chat_object:HideChatInputUI()
            for _, callback in pairs(onCloseChatCallback or {}) do
                callback(current_message)
            end
        end)
    end)
end

---@return string
function chat_message_getter.GetMessage()
    return current_message
end

return chat_message_getter