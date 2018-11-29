Rails.application.routes.draw do
  get 'items/index'
  get 'items/show'
  get 'carts/show'
  root to: "home#index"

  
  devise_for :users
	# root to: "application#hello"	
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
