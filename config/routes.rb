Rails.application.routes.draw do

  resources :shops do
    resources :products, only: %i[show new create]
  end

  get 'search_products', to: 'products#filter'

  root to: 'shops#index'
end
