Rails.application.routes.draw do
  root to: 'recipes#index'

  resources :users, except: [:new] do
   resources :recipes, only: [:show]
  end

  resources :recipes, except: [:show] do
    get 'edit_instructions', to: 'recipes#edit_instructions'
    get 'edit_ingredients', to: 'recipes#edit_ingredients'
  end

  get 'login', to: 'users#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end
