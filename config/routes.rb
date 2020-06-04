Rails.application.routes.draw do
  devise_for :users
  resources :user, only: [:show]
  resources :items do
  	resources :pictures, only: [:create, :update]
  end
  root "items#index"
  resources :admin, only: [:edit, :create, :destroy]
  get "/my_cart", to: "carts#show"
  get "/me", to: "user#show"
  get "/admin_space", to: "admin#edit"
  resources :carts
  resources :charges

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
