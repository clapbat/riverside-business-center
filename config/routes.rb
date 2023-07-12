Rails.application.routes.draw do
  get 'pages/home'
  root to: 'pages#home'
  get '/services', to: 'pages#services'
  get '/about', to: 'pages#about'
  get '/termsandprivacy', to: 'pages#termsandprivacy'
  get '/gallery', to: 'pages#gallery'
  get '/contacts', to: 'pages#contacts'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
