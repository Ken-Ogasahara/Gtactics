Rails.application.routes.draw do

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
  }
  root to: 'tactics#index'

  resources :tactics, only: [:new, :create, :edit, :update, :destroy, :index]
  resources :elements, only: [:new, :create, :edit, :update, :destroy]
  resources :fields, only: [:new, :create, :edit, :update, :destroy, :index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
