class TestsController < WebsocketRails::BaseController
	def initialize_session
    controller_store[:message_count] = 0
  end

  def send
  	channel = message[:chn]
  	logger.info(channel)
  	WebsocketRails[channel].trigger(:send, message)
  end

end
