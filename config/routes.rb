Rails.application.routes.draw do
  
  # root 'pages#index'

  resources :reviews, only: [:create, :destroy]
  resources :airlines
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  # get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }

  get '*path', to: 'pages#index', via: :all
end
