Rails.application.routes.draw do
  root 'home#index'
  get 'home', to: 'home#index'
  get 'search/:key/:value', to: 'search#search', as: :apartment_search
  get 'search/:key', to: 'search#search', as: :search
  resources :apartments, only: [:show, :index]
end
