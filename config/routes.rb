Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  resources :users

  get 'image', to: 'users#image'
  patch 'addimage', to: 'users#addimage'
end
