Rails.application.routes.draw do
  root to: 'newsletters#index'

  resources :newsletters do
    # member do
    #   post 'vote'
    # end
  end

  get '/register', to: 'users#new'

  resources :users, only: [:show ,:create]
end