class TestsController < WebsocketRails::BaseController
	def initialize_session
    controller_store[:message_count] = 0
  end

  def send
  	channel = message[:chn]
  	success = {}
  	success["message"] = 'awesome level is sufficient'
	  trigger_success success
  	# WebsocketRails["#{channel}"].trigger(:send, message)
  end

end
