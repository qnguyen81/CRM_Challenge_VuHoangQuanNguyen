# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'customers#index'
  get '/customers/missing_email' => 'customers#missing_email'
  get '/customers/alphabetized' => 'customers#alphabetized'
end
