class TestsController < WebsocketRails::BaseController
	def initialize_session
    controller_store[:message_count] = 0
  end

  def send
  	new_message = {:message => message}
  	WebsocketRails[new_message.message.chn].trigger(:send, new_message)
  end

end
