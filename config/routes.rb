Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root 'concerts#index'

    get "/concerts" => "concerts#index"
    get "/concerts/new" => 'concerts#new'
    post "/concerts" => 'concerts#create'
    get "/concerts/:id" => 'concerts#show'
    delete "/concerts/:id" => 'concerts#destroy'
    get "/concerts/:id/edit" => 'concerts#edit'
    patch "/concerts/:id" => 'concerts#update'

    get "/users" => "users#index"
    get "/users/new" => 'users#new'
    post "/users" => 'users#create'
    get "/users/:id" => 'users#show'
    delete "/users/:id" => 'users#destroy'
    get "/users/:id/edit" => 'users#edit'
    patch "/users/:id" => 'users#update'

    resources :singers

    get "/sessions/new" => 'sessions#new'
    post "/sessions" => 'sessions#create'
    get "/logout" => 'sessions#destroy'

end
