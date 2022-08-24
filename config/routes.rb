Rails.application.routes.draw do
  
  root "movies#index"
  resources :reviews
  

  resources :movies do
    resources :reviews
  end
end
