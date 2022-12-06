Rails.application.routes.draw do
  root 'events#index'
  
  
  devise_for :users
  resources :users, only: [:index, :show]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :events, only: [:index, :show, :create, :new]
  resources :invitations, only: [:index, :show, :create, :new]
  # Defines the root path route ("/")
  # root "articles#index"
end
