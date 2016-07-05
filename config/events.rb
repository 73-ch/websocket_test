WebsocketRails::EventMap.describe do
	private_channel :posts
		subscribe :send_message, 'tests#send'
end
