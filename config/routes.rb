Rails.application.routes.draw do

  
  get 'user/show'
  devise_for :users
  resources :items do
  	resources :pictures, only: [:create, :update]
  end
  root "items#index"
  resources :user, only: [:show]
  resources :admin, only: [:edit, :create, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
