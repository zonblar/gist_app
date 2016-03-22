Rails.application.routes.draw do

  root to: 'pages#home'

  devise_for :users

  resources :gists

  resources :gists do
    resources :reviews, only: [:new, :create]
  end

  end
