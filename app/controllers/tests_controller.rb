class TestsController < WebsocketRails::BaseController
	def initialize_session
    controller_store[:message_count] = 0
  end

  def send
  	WebsocketRails[data.chn].trigger(:send, data)
  end

end
