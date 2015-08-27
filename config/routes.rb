Rails.application.routes.draw do
  root to: 'newsletters#index'

  resources :newsletters do
    member do
      post 'vote' # /newsletters/3/vote
    end
  end

  get '/register', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  resources :users, only: [:show ,:create]
end