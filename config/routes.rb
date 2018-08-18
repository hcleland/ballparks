Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
    get "/ballparks" => "ballparks#index"
    get "/ballparks/:id" => "ballparks#show"

    post "/ratings" => "ratings#create"
  end
end
