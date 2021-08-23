Rails.application.routes.draw do
  resources :users, only: %i[create]
  resource :sessions, only: %i[create show]

  resources :units, only: %i[index show] do
    resources :measurements, only: %i[create update destroy]
  end
  
  resources :measurements, only: %i[index]
end
