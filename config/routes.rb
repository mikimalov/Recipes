Rails.application.routes.draw do
  root to: 'recipes#index'

  resources :users
  resources :recipes
end
