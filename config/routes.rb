Rails.application.routes.draw do
  root 'apartments#index'
  resources :apartments, only: [:show, :index]
  get 'search/:key/:value', to: 'search#search'
end
