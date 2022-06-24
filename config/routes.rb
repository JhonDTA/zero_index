# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'static_pages#home'

  devise_scope :user do
    # Redirects signing out users back to sign-in
    get 'users', to: 'devise/sessions#new'
  end

  devise_for :users, controllers: { registrations: 'registrations' }
end
