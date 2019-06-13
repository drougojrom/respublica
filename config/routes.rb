Rails.application.routes.draw do

  resources :shops, only: %i[index new show create destroy] do
    resources :products, only: %i[show new create]
  end

  get 'filter_products', to: 'products#filter'

  root to: 'shops#index'
end
