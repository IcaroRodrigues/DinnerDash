Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  
  get "/meals", to: "meals#index"
  get "/meals/:id", to: "meals#show"
  post "/meals", to: "meals#create"
  put "/meals/:id", to: "meals#update"
  delete "meals/:id", to: "meals#destroy"

  get "/meals_category", to: "meals_category#index"
  
end
