Rails.application.routes.draw do
  resources :favorites
  resources :users
  get "signup" => "users#new"

  get "signin" => "sessions#new"
  
  root "movies#index"
  resources :reviews

  resource :session, only: [:new, :create, :destroy]
  

  resources :movies do
    resources :reviews
  end
end
