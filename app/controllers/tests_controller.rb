class TestsController < WebsocketRails::BaseController
	def initialize_session
    controller_store[:message_count] = 0
  end

  def send_message
  	channel = message[:chn]
  	WebsocketRails["#{channel}"].trigger(:send, message)
    # aaa
  end

end
