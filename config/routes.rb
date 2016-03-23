Rails.application.routes.draw do

  get 'search/index'

  root to: 'pages#home'

  devise_for :users, :controllers => { registrations: 'registrations' }

  resources :gists do
    resources :reviews, only: [:new, :create]
  end

  end
