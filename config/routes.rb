# frozen_string_literal: true

Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  namespace :api do
    namespace :v1 do
      resources :phrases, only: [:index]
    end
  end
end
