Rails.application.routes.draw do
  resources :foods
  resources :teas
  resources :frappuccinos
  resources :espressos
  resources :coffees
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root to: redirect("/espressos")
end
