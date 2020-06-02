Rails.application.routes.draw do
  root "items#index"
  devise_for :users
  resources :user, only: [:show]
<<<<<<< HEAD
  resources :items
  resources :carts
=======
  resources :charges
>>>>>>> 45f4d18af44833ec29a43ac824d141a2a8e311ee
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
