Rails.application.routes.draw do
  # get 'items/index'
  # get 'items/show'
  # get 'carts/show'
  root to: "home#index"

  
  devise_for :users
	# root to: "application#hello"	
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  
  # :controllers => { registrations: 'registrations' }
  get '/carts/add_item/:id', to: 'carts#add_item'
  get '/carts/remove_item/:id_r/:id_o', to: 'carts#remove_item'
  post '/carts/add_to_cart', to: 'carts#add_item'
  post '/items/add_to_cart', to: 'items#add_to_cart'
  resources :items, param: :slug
  resources :carts, param: :slug
  # resources :orders, :charges

end
