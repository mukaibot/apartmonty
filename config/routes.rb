Rails.application.routes.draw do
  root 'home#index'
  get 'home', to: 'home#index'
  get 'search/:key/:value', to: 'search#apartment_search', as: :apartment_search
  get 'search', to: 'search#filter_search', as: :search
  resources :apartments, only: [:show, :index]
end
