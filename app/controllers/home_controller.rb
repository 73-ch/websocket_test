class HomeController < ApplicationController
	require 'securerandom'
	def home
		@channel = SecureRandom.hex(2)
	end

	def data_send
		@channel = params[:channel]
	end

	def cigar
		@channel = params[:channel]
	end
end
