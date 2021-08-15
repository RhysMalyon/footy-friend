Rails.application.routes.draw do
  root to: 'pages#home'
  resources :leagues, only: %i[index create new show destroy]
  resources :teams, only: %i[index create new show destroy]
  resources :players, only: %i[create new destroy]
  resources :stadiums, only: %i[index create new show destroy]
end
