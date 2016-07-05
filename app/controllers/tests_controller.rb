class TestsController < WebsocketRails::BaseController
	def initialize_session
    controller_store[:message_count] = 0
  end

  def send
  	WebsocketRails[:message.chn.to_s].trigger(:send, message)
  end

end
