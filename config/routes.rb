Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
    get "/ballparks" => "ballparks#index"
    get "/ballparks/:id" => "ballparks#show"

    post "/ratings" => "ratings#create"

    post "/users" => "users#create"

    post "/sessions" => "sessions#create"
  end
end
