Rails.application.routes.draw do
  resources :help_requests, only: [:index, :show]
end
