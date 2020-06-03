Rails.application.routes.draw do
<<<<<<< HEAD

  
  get 'user/show'
  devise_for :users
  resources :items do
  	resources :pictures, only: [:create, :update]
  end
=======
>>>>>>> a2465e8087add042365722bf8c4a1bfd4f3dfcbf
  root "items#index"
  devise_for :users
  resources :user, only: [:show]
<<<<<<< HEAD
  resources :admin, only: [:edit, :create, :destroy]

=======
  resources :items
  resources :carts
  resources :charges
>>>>>>> a2465e8087add042365722bf8c4a1bfd4f3dfcbf
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
