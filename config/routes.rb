Rails.application.routes.draw do
  # トップページはメンターのプロフィールを一覧表示
  root 'profiles#index'
  post '/', to: 'profiles#index'

  resources :profiles do
    # メンターのプロフィールを購入することでメンター契約ができる
    resources :orders, only: [:index, :create, :destroy]
    # メンターのプロフィールに対してレビューができる
    resources :reviews, only: [:create, :destroy]
  end

  devise_for :users
  resources :users, only: [:show, :edit, :update, :destroy]

  # メッセージ画面
  get 'messages/index'
  resources :rooms do
    resources :messages
  end
end