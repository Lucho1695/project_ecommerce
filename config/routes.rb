Rails.application.routes.draw do
  devise_for :users
  resources :comments
  resources :historials
  resources :sellers
  resources :orders
  resources :pay_methods
  resources :clients
  resources :products
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'products#index'
end
