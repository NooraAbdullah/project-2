Rails.application.routes.draw do
  get "/decorators", to: "decorators#index", as: "decorators"
  get "/decorators/:id", to: "decorators#show", as: "decorator"
  # get 'venues/index'
  # get 'venues/new'
  # get 'venues/edit'
  # get 'venues/show'
  # get 'venues/_form'
  devise_for :users
  resources :events
  resources :venues
  # resources :photog
  # get 'home/index'
  root to: "home#index"
end
