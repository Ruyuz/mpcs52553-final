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

    get "/purchases" => "purchases#index"
    get "/purchases/new" => 'purchases#new'
    post "/purchases" => 'purchases#create'
    get "/purchases/:id" => 'purchases#show'
    delete "/purchases/:id" => 'purchases#destroy'
    get "/purchases/:id/edit" => 'purchases#edit'
    patch "/purchases/:id" => 'purchases#update'


end
