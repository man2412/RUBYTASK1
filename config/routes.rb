Rails.application.routes.draw do
  get 'sessions/new'
  get '/signup', to:'users#new'
  
  root 'main#home'
  get '/home', to:'main#home'
  get '/help', to: 'main#help'
  
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  resources :users
  resources :microposts, only: [:create, :destroy]


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
