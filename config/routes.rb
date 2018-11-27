Rails.application.routes.draw do

  root to: "home#index"
  devise_for :users
  get '/carts/add_item/:id', to: 'carts#add_item'
  get '/carts/remove_item/:id', to: 'carts#remove_item'
  resources :items, :orders, :carts, :charges

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
