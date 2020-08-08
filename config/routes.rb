Rails.application.routes.draw do
  root to: 'recipes#index'

  resources :users
  resources :recipes

  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end
