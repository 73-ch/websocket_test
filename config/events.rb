WebsocketRails::EventMap.describe do
	private_channel :posts
	namespace :websocket_rails do
		subscribe :send_message, 'tests#send'
	end
end
