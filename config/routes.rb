Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  get "/meals", to: "meals#index"
  get "/meals/:id", to: "meals#show"
  put "/meals/:id", to: "meals#update"
  post "/meals", to: "meals#create"
  delete "/meals/:id", to: "meals#destroy"

  get "/meals_categories", to: "meal_categories#index"
  get "/meals_categories/:id", to: "meal_categories#show"
  put "/meals_categories/:id", to: "meal_categories#update"
  post "/meals_categories", to: "meal_categories#create"
  delete "/meals_categories/:id", to: "meal_categories#destroy"

  get "/orders", to: "orders#index"
  get "/orders/:id", to: "orders#show"
  put "/orders/:id", to: "orders#update"
  post "/orders", to: "orders#create"
  delete "/orders/:id", to: "orders#destroy"

  get "/orders_meals", to: "order_meals#index"
  get "/orders_meals/:id", to: "order_meals#show"
  put "/orders_meals/:id", to: "order_meals#update"
  post "/orders_meals", to: "order_meals#create"
  delete "/orders_meals/:id", to: "order_meals#destroy"

  get "/situations", to: "situations#index"
  get "/situations/:id", to: "situations#show"
  put "/situations/:id", to: "situations#update"
  post "/situations", to: "situations#create"
  delete "/situations/:id", to: "situations#destroy"


  post '/auth/login', to: 'authentication#login'
  post '/users', to: 'users#create'
  get '/users', to: 'users#index'
  get '/*a', to: 'application#not_found'
   
end
