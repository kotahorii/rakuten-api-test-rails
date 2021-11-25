Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :hotpeppers, only: %i[create]
      resources :hotpepper_details, only: %i[create]
    end
  end
end
