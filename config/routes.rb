Rails.application.routes.draw do
  get '/signup', to:'users#new'
  
  root 'main#home'
  get '/home', to:'main#home'
  get '/help', to: 'main#help'
  get '/login', to:'main#login'
  resources :users

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
