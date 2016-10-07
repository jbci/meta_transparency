Rails.application.routes.draw do
  resources :rata
  get 'admins/index'

  get 'users/index'

  resources :permissions
  resources :app_models
  resources :model_types
  resources :app_attributes
  resources :attribute_types
  devise_for :users
  resources :users
  devise_for :admins
  resources :admins
  resources :backend

  get 'home/index'
  get 'admin', to: 'home#admin'
  get 'user', to: 'home#user'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "home#index"
end
