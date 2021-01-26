Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    post "/users" => "users#create"
    delete "/users/:id" => "users#destroy"

    post "/sessions" => "sessions#create"

    post "/dogs" => "dogs#create"
  end
end
