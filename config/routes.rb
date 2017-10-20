Rails.application.routes.draw do
  get 'questions/question_1', to: 'questions#question_1', as: :q1

  get 'questions/question_2', to: 'questions#question_2', as: :q2

  get 'questions/question_3', to: 'questions#question_3', as: :q3

  get 'questions/question_4', to: 'questions#question_4', as: :q4

  resources :products
  devise_for :users

  root 'products#index'

  post '/add_product', to: 'user_product#add_product'

  get 'user_product/cart', to: 'user_product#cart', as: :view_cart

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
