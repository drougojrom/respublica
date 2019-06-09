Rails.application.routes.draw do

  resources :shops
  resources :products, only: %i[show]

  root to: 'shops#index'
end
