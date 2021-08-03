Rails.application.routes.draw do
  devise_for :users
  resources :restaurants do
    resources :orders
  end
  root to: 'restaurants#index'
end
