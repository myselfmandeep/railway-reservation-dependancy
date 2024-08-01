Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  mount Base => "/api"

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # # no longer required because the implementation of grape api
  # get "/webhooks", to: "webhooks#receive"
  # post "broadcast_message", to: "messages#broadcast_message"

  # Defines the root path route ("/")
  # root "posts#index"
end