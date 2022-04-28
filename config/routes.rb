Rails.application.routes.draw do
  resources :comments
  devise_for :users, :controllers => { registrations: 'registrations' }
  root 'secrets#index'

  resources :secrets, only: [:index, :show, :new, :create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
