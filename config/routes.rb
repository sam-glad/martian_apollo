Rails.application.routes.draw do
  resources :help_requests
  resources :help_requests do
    resources :comments, only: [:create]
  end

  root to: 'help_requests#index'

  get '/auth/github/callback', to: 'sessions#create'
  get '/signout', to: "sessions#destroy", as: :signout

  resources :sessions, only: [:destroy]

end
