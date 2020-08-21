Rails.application.routes.draw do
  root 'profiles#index'
  devise_for :users
  resources :users, only: [:show, :edit, :update, :destroy]
  resources :profiles do
    resources :orders, only: [:index, :create]
  end
end
