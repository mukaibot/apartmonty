Rails.application.routes.draw do
  root 'apartments#index'
  resources :apartments, only: [:show, :index]
end
