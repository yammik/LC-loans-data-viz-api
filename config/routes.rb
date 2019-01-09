Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :loans, only: %i(show)
      resources :states, only: %i(index show)
      resources :purposes, only: %i(index show)
      resources :grades, only: %i(index show)

      get '/states/:id/:purpose_id', to: 'states#specific'
    end
  end
end
