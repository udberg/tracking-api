Rails.application.routes.draw do
  resources :users, only: [:create]
  resource :sessions, only: [:create, :show]
  resources :units, only: [:index, :show] do
    resources :measurements, only: [:create, :update, :destroy]
  end
  resources :measurements, only: [:index]
end
