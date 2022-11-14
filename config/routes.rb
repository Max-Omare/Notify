Rails.application.routes.draw do
  namespace :admin do
      resources :users
      resources :news

      root to: "users#index"
    end
  resources :users
  resources :news
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "news#index"
end
