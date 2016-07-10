class TestsController < WebsocketRails::BaseController
	def initialize_session
    controller_store[:message_count] = 0
  end

  def send
  	channel = message[:chn]
  	WebsocketRails["#{channel}"].trigger(:send, message)
  end

end
