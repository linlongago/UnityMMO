ChatModel = BaseClass(EventDispatcher)

function ChatModel:Constructor()
	ChatModel.Instance = self
	self:Reset()
end

function ChatModel:Reset()
end

function ChatModel.GetInstance()
	if ChatModel.Instance == nil then
		ChatModel.Instance = ChatModel.New()
	end
	return ChatModel.Instance
end

function ChatModel:GetChatList( channel )
	return self.chat_list[channel]
end

function ChatModel:SetChatList( channel, value )
	self.chat_list[channel] = value
end

function ChatModel:UpdateChatList( newChatInfo )
	
end

return ChatModel