Rails.application.routes.draw do
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root 'media_items#home'
  
  # MediaItem
  get 'banners',   to: 'media_items#banners',    as: :banners
  get 'logos',     to: 'media_items#logos',      as: :logos
  get 'maps',      to: 'media_items#maps',       as: :maps
  get 'videos',    to: 'media_items#videos',     as: :video_players
  get 'websites',  to: 'media_items#websites',   as: :websites
  get 'featured',  to: 'media_items#featured',   as: :featured
  get 'search',    to: 'media_items#search',     as: :search
  get 'favorites', to: 'media_items#favorites',  as: :favorites
  get 'social_media', to: 'media_items#social',  as: :socials
  
  # Favorite
  post   '/favorites/:media_item/:id/create',  to: 'favorites#create',  as: :create_favorite
  delete '/favorites/:media_item/:id/destroy', to: 'favorites#destroy', as: :destroy_favorite
end
