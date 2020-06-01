Rails.application.routes.draw do
<<<<<<< HEAD
  devise_for :users
  get 'products/index'
=======
  resources :items
  root "items#index"
>>>>>>> ec8bfa6fd0259cd3158abfd05f085fcf52959950
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
