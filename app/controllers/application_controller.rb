class ApplicationController < ActionController::Base
	def hello
		render html: "Bonjour!"
	end 
end
