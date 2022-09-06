Rails.application.routes.draw do

  root to: 'categories#index'
  resources :categories, only: [:index, :show] do
    resources :recipes, only: [:new, :create]
  end
  resources :recipes, except: [:new, :create] do
    resources :ingredients, except: [:show]
  end


  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :users, only: [:show]
  get 'register', to: 'users#new'
  post 'register', to: 'users#create'

  resources :recipes, only: [:show] do
    resources :ratings, only: [:create]
  end

  post 'tokens', to: 'tokens#create'
end
