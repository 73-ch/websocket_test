Rails.application.routes.draw do
	root to: "home#home"
	get "send/:channel" => 'home#data_send'
  get "cigar" => 'home#cigar'
end
