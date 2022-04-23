Rails.application.routes.draw do
  root 'secrets#index'

  resources :secrets
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
