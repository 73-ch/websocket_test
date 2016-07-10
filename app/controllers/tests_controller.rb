class TestsController < WebsocketRails::BaseController
	def initialize_session
    controller_store[:message_count] = 0
  end

  def send
  	channel = message[:chn]
  	if message[:chn]
	    trigger_success {message => 'awesome level is sufficient'}
	  else
	    trigger_failure {message => 'awesome level is insufficient'}
	  end
  	WebsocketRails["#{channel}"].trigger(:send, message)
  end

end
