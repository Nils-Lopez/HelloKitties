Rails.application.routes.draw do
  devise_for :users
  resources :user, only: [:show]
  resources :items do
  	resources :pictures, only: [:create, :update]
  end
  root "items#index"
  resources :admin, only: [:edit, :create, :destroy]
  resources :carts
  resources :charges

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
