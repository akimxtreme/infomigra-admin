Rails.application.routes.draw do
  resources :user_steps
  resources :user_availabilities
  resources :steps
  resources :provinces
  resources :communes
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'page/index'

  devise_for :users
  resources :countries
  resources :profiles
  resources :theme_interests
  resources :studies
  resources :level_studies
  resources :availabilities
  resources :schedules
  resources :days
  resources :distances
  resources :economic_activities
  resources :abilities
  resources :interests
  resources :sexual_identities
  resources :genders
  resources :sentimental_situations
  resources :family_bonds
  resources :type_steps
  resources :category_steps
  resources :you_want_to_dos
  resources :current_statuses
  resources :current_situation_countries
  resources :situations_arrivals_countries
  resources :regions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  authenticated :user do
    root 'countries#index', as: :authenticated_root
  end
  # redirect("/users/sign_in")
  # root "page#index"

  unauthenticated :user do
    root 'page#index', as: :unauthenticated_root
  end
  #root to: 'devise/sessions#new', as: 'unauthenticated_root'
end
