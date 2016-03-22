Rails.application.routes.draw do

  get 'search/index'

  get "gist_search" => 'pages#gist_search'

  root to: 'pages#home'

  devise_for :users, :controllers => { registrations: 'registrations' }

  resources :gists

  resources :gists do
    resources :reviews, only: [:new, :create]
  end

  end
