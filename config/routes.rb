Rails.application.routes.draw do
  resources :products
  devise_for :users

  root 'products#index'

  post '/add_product', to: 'user_product#add_product'

  get 'user_product/cart', to: 'user_product#cart', as: :view_cart

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
