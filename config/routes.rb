Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: 'pages#home'
  resources :leagues
  resources :players, only: %i[create new destroy edit update]
  resources :stadiums
  resources :teams
end
