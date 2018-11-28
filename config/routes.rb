Rails.application.routes.draw do

  root to: "home#index"
  devise_for :users
  # :controllers => { registrations: 'registrations' }
  get '/carts/add_item/:id', to: 'carts#add_item'
  get '/carts/remove_item/:id_r/:id_o', to: 'carts#remove_item'
  post '/carts/add_to_cart', to: 'carts#add_item'
  post '/items/add_to_cart', to: 'items#add_to_cart'
  resources :items, param: :slug
  resources :carts, param: :slug
  resources :orders, :charges

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
# Cart.joins(:items).where(items: { id: 4})