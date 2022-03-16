Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/coffees" => "coffees#index"
  post "/coffees" =>"coffees#create"
  get "coffees/:id" => "coffees#show"
  patch "/coffees/:id" => "coffees#update"
  delete "/coffees/:id" => "coffees#destroy"
end
