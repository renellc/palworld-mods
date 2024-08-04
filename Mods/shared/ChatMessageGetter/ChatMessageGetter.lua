local ChatMessageGetter = {}

-- Define a callback variable
local onCloseChatCallback = {} ---@type function[]

-- Function to set the callback
---@param callback fun(message: string)
function ChatMessageGetter.AddMessageCallback(callback)
    table.insert(onCloseChatCallback, callback)
end

---@param callback fun(message: string) | string
function ChatMessageGetter.RemoveMessageCallback(callback)
    --TODO: Implemnt function to remove callbacks
end

local chat_open = false
local current_message = ""

local EditableTextInstances = FindAllOf("EditableText") ---@type UEditableText[]?
local EditableTextInstance = nil
if not EditableTextInstances then
    print("No EditableTextInstances were found")
    return
else
    for _, EditableText in pairs(EditableTextInstances) do
        if string.match(EditableText:GetFullName(), "EditableText /Engine/Transient.GameEngine(.-)EditableText_ChatInput") then
            EditableTextInstance = EditableText
        end
    end
end

if EditableTextInstance == nil then
    return
end

for key_name, key_value in pairs(Key) do
    if (tostring(key_name) ~= "RETURN") and not (IsKeyBindRegistered(key_value)) then
        RegisterKeyBind(key_value, function()
            if chat_open then
                current_message = EditableTextInstance:GetText():ToString()
            end
        end)
    end
end

RegisterHook("/Game/Pal/Blueprint/UI/UserInterface/InGame/Chat/WBP_Ingame_Chat.WBP_Ingame_Chat_C:ShowChatInputUI", function()
    chat_open = true
end)

RegisterHook("/Game/Pal/Blueprint/UI/UserInterface/InGame/Chat/WBP_Ingame_Chat.WBP_Ingame_Chat_C:HideChatInputUI", function()
    if chat_open then
        for _, callback in pairs(onCloseChatCallback or {}) do
            callback(current_message)
        end
    end
    chat_open = false
end)

---@return string
function ChatMessageGetter.GetMessage()
    return current_message
end

return ChatMessageGetter