local ChatMessageGetter = {}

-- Define a callback variable
local onCloseChatCallback = nil

-- Function to set the callback
function ChatMessageGetter.SetMessageCallback(callback)
    onCloseChatCallback = callback
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

for k,v in pairs(Key) do
    if not (tostring(k) == "RETURN") then
        RegisterKeyBind(v, function()
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
    if onCloseChatCallback and chat_open then
        onCloseChatCallback(current_message)
    end
    chat_open = false
end)

---@return string
function ChatMessageGetter.GetMessage()
    return current_message
end

return ChatMessageGetter