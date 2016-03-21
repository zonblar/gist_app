Rails.application.routes.draw do

  root to: 'pages#home'

  devise_for :users do
    resources :gists
  end

  resources :gists, only: :index

  end
