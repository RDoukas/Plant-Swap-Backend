Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  namespace :api do
    get "/ads" => "ads#index"
    post "/ads" => "ads#create"
    get "/ads/:id" => "ads#show"
    patch "/ads/:id" => "ads#update"
    delete "/ads/:id" => "ads#destroy"

    get "/categories" => "categories#index"

    get "/conversations" => "conversations#index"
    post "/conversations" => "conversations#create"
    get "/conversations/:id" => "conversations#show"
    delete "/conversations/:id" => "conversations#destroy"

    post "/messages" => "messages#create"
    post "/messages/:id" => "messages#show"
    
    post "/users" => "users#create"
    get "/users/:id" => "users#show"
    patch "/users/:id" => "users#update"
    delete "/users/:id" => "users#destroy"
    post "/sessions" => "sessions#create"

    get "/*path" => proc { [200, {}, [ActionView::Base.new.render(file: 'public/index.html')]] }

  end

  

end
