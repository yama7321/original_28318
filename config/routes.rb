Rails.application.routes.draw do
  get 'messages/index'
  root 'profiles#index'
  devise_for :users
  resources :users, only: [:show, :edit, :update, :destroy]
  resources :profiles do
    resources :orders, only: [:index, :create]
  end
  resources :rooms do
    resources :messages
  end
end
