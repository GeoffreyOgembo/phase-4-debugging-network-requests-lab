Rails.application.routes.draw do
  resources :toys, only: [:index, :create, :update, :destroy]
  resources :toys
end