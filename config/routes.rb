Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    #users
    get "/users" => "users#index"
    post "/users" => "users#create"
    get "/users/:id" => "users#show"
    patch "/users/:id" => "users#update"
    delete "/users/:id" => "users#destroy"
    #hikes
    get "/hikes" => "hikes#index"
    post "/hikes" => "hikes#create"
    get "/hikes/:id" => "hikes#show"
    patch "/hikes/:id" => "hikes#update"
    delete "/hikes/:id" => "hikes#destroy"

    #authentication
    post "/sessions" => "sessions#create"
    end
end
