Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
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

  get "/orders", to: "order_meals#index"
  get "/orders/:id", to: "order_meals#show"
  put "/orders/:id", to: "order_meals#update"
  post "/orders", to: "order_meals#create"
  delete "/orders/:id", to: "order_meals#destroy"

  get "/situations", to: "situations#index"
  get "/situations/:id", to: "situations#show"
  put "/situations/:id", to: "situations#update"
  post "/situations", to: "situations#create"
  delete "/situations/:id", to: "situations#destroy"
  
end
