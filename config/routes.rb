Rails.application.routes.draw do
  resources :doodads
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "/page", to: "page#index" 
  # Defines the root path route ("/")
  # root "articles#index"
end
