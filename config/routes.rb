Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :phrases, only: [:index]
    end
  end
end
