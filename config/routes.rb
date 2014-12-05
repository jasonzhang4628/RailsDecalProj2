Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  resources :users

  get 'image', to: 'users#image'
  patch 'addimage', to: 'users#addimage'
  get 'adddog', to: 'dog#new'
  post 'newdog', to: 'dog#create'

  get 'message', to: 'message#new'
  post 'addmessage', to: 'message#create'
end
