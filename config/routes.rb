Rails.application.routes.draw do
  get 'users/index'

  devise_for :users, :controllers => { :registrations => "user/registrations" }
  resources :articles
  
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root 'pages#home'
  
  get 'pages/home', to: 'pages#home'

  get 'pages/about', to: 'pages#about'
  
  get 'users', to: 'users#index'
  
  resources :conversations, only: [:index, :show, :destroy]
  resources :messages, only: [:new, :create]
  
  
end
