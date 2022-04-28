Rails.application.routes.draw do
  root 'secrets#index'
  resources :comments, only: [:new, :create, :destroy]
  devise_for :users, :controllers => { registrations: 'registrations' }

  resources :secrets, only: [:index, :show, :new, :create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
