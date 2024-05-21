Rails.application.routes.draw do
  root "hello#index"

  resources :posts do
    resources :comments, only: [:create, :destroy]
  end

  resources :users
  resources :sessions, only: [:new, :create, :destroy]
end
