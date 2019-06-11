Rails.application.routes.draw do

  resources :shops
  resources :products, only: %i[show new create] do
    collection do
      get :search
    end
  end

  root to: 'shops#index'
end
