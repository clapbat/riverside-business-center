Rails.application.routes.draw do
  get 'pages/home'
  root to: 'pages#home'
  get '/about', to: 'pages#about'
  get '/terms&privacy', to: 'pages#terms&privacy'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
