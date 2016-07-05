class HomeController < ApplicationController
	def home
		@channel = (Random.rand * 10000).floor
	end

	def data_send
		@channel = params[:channel]
	end
end
