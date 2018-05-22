Rails.application.routes.draw do
  get 'pages/home'

  resources :websites
  resources :video_players
  resources :posts
  resources :users
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'welcome/index'
 
  root 'pages#home'
  
end