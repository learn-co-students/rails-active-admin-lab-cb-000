Rails.application.routes.draw do
  devise_for :users
  ActiveAdmin.routes(self)
  resources :artists, only: [:index, :show]
  resources :songs, only: [:index, :show]

  root to: 'artists#index'
end
