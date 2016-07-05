class HomeController < ApplicationController
	def home
		@channel = (Random.rand * 10000).floor.to_s
	end

	def data_send
		@channel = params[:channel]
		logger.info("channel is" + @channel)
	end
end
