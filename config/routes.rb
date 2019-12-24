Rails.application.routes.draw do
  get 'decorators/index'
  get 'decorators/show'
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
