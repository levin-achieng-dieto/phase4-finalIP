Rails.application.routes.draw do
  
  # resources :users
  # root 'pages#index'

  resources :reviews, only: [:create, :destroy]
  resources :airlines

  post '/signup', to: "users#create"
  post '/login', to: "sessions#create"
  delete '/logout', to: "sessions#destroy"
  get '/me', to: "users#show"
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }

  # get '*path', to: 'pages#index', via: :all
end
