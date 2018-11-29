Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'


  get '/carts/add_item/:id', to: 'carts#add_item'
  get '/carts/remove_item/:id_r/:id_o', to: 'carts#remove_item'
  get '/customers/profil', to: 'customers#profil'

  post '/carts/add_to_cart', to: 'carts#add_item'

  get '/checkout', to: 'orders#checkout'

  resources :items, param: :slug
  resources :carts, param: :slug
  resources :orders, :charges
end