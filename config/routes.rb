Rails.application.routes.draw do
  resources :user_steps
  resources :user_availabilities
  resources :steps
  resources :provinces
  resources :communes
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'page/index'
  get 'countries/countries_three'
  get 'situations_arrivals_countries/situations_arrivals_countries_three'
  get 'current_statuses/current_statuses_three'
  get 'api/communes'
  get 'api/countries'
  get 'api/countries_three'
  get 'api/authentication'
  get 'api/sign_up'

  #devise_for :users
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

  #Routes API IONIC
  namespace :api, :defaults => {:format => 'json'} do
    devise_for :users
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  authenticated :user do
    root to: "admin/dashboard#index"
    #root 'countries#index', as: :authenticated_root
  end
  # redirect("/users/sign_in")
  # root "page#index"

  unauthenticated :user do
    root to: "admin/dashboard#index"
    #root 'page#index', as: :unauthenticated_root
  end
  #root to: 'devise/sessions#new', as: 'unauthenticated_root'
end
