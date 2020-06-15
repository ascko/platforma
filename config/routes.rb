Rails.application.routes.draw do
  resources :licenses
  resources :subscriptions
  resources :plans
  resources :products
  resources :distributors
  resources :users
  apipie
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
