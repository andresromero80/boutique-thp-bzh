class ApplicationController < ActionController::Base
before_action :configure_permitted_parameters, if: :devise_controller?
protect_from_forgery with: :exception
before_action :set_cart
	def hello
		render html: "Bonjour!"
	end 

  protected

	def configure_permitted_parameters
	  devise_parameter_sanitizer.permit(:sign_up, keys:[:header_image])	
	  # devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:firstname, :lastname, :email, :password, :password_confirmation)}
	end

	def set_cart
		if current_user
			@cart = Cart.find_by(user_id: current_user.id)
			unless @cart
				@cart = Cart.create(user_id: current_user.id, slug: 'mon-panier')
				current_user.cart = @cart
				@cart = Cart.find_by(user_id: current_user.id)
			end
		end
	end
	


end
