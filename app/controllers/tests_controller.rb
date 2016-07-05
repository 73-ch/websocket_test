class TestsController < WebsocketRails::BaseController
	WebsocketRails[:posts].make_private
	def initialize_session
    controller_store[:message_count] = 0
  end

  def send
  	new_message = {:message => message}
		broadcast_message :send, new_message
  end

end
