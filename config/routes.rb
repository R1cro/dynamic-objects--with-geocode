Store::Application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  resources :users

  resources :dynamic_objects
  resources :dynamic_object_types

  resources :locations
end
