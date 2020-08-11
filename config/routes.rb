Rails.application.routes.draw do
  root to: 'recipes#index'

  resources :users, except: [:new] do
   resources :recipes, only: [:show]
  end

  resources :recipes, except: [:show]

  get 'login', to: 'users#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end
