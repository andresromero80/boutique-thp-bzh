Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'
  get '/carts/add_item/:id', to: 'carts#add_item'
  get '/carts/remove_item/:id_r/:id_o', to: 'carts#remove_item'
  post '/carts/add_to_cart', to: 'carts#add_item'
  get '/items/show', to: 'items#show'
  get '/items/index', to: 'items#index'
  get '/customers/profil', to: 'customers#profil'
  resources :items, param: :slug
  resources :carts, param: :slug
  resources :orders, :charges
# Cart.joins(:items).where(items: { id: 4})
end