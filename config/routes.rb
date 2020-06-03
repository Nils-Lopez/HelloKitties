Rails.application.routes.draw do
  root "items#index"
  devise_for :users
  resources :user, only: [:show]
  get 'user/show'
  resources :items do
  	resources :pictures, only: [:create, :update]
  end
  resources :carts
  resources :charges
  resources :admin, only: [:edit, :create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
