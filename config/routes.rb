Rails.application.routes.draw do
  root "items#index"
  devise_for :users
  resources :user, only: [:show]
  resources :items
  resources :carts
  resources :charges
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
