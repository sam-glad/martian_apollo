Rails.application.routes.draw do
  resources :help_requests, only: [:index, :show, :new, :create]
  resources :help_requests do
    resources :comments, only: [:create]
  end
end
