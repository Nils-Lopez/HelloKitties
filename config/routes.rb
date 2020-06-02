Rails.application.routes.draw do

  get 'carts/index'
  get 'carts/show'
  get 'carts/new'
  get 'carts/create'
  get 'carts/edit'
  get 'carts/update'
  get 'carts/destroy'
  get 'user/show'
  devise_for :users
  resources :items
  root "items#index"
  resources :user, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
