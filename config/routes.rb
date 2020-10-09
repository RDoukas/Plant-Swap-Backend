Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  namespace :api do
    get "/api/ads" => "ads#index"
    post "/api/ads" => "ads#create"
    get "/api/ads/:id" => "ads#show"
    patch "/api/ads/:id" => "ads#update"
    delete "/api/ads/:id" => "ads#destroy"

    get "/api/categories" => "categories#index"

    get "/api/conversations" => "conversations#index"
    post "/api/conversations" => "conversations#create"
    get "/api/conversations/:id" => "conversations#show"
    delete "/api/conversations/:id" => "conversations#destroy"

    post "/api/messages" => "messages#create"
    post "/api/messages/:id" => "messages#show"
    
    post "/api/users" => "users#create"
    get "/api/users/:id" => "users#show"
    patch "/api/users/:id" => "users#update"
    delete "/api/users/:id" => "users#destroy"
    post "/api/sessions" => "sessions#create"

  end
end
