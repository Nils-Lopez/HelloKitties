Rails.application.routes.draw do

  get 'user/show'
  devise_for :users
  resources :items
  root "items#index"
  resources :user, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
