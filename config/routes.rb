Rails.application.routes.draw do
  get 'contact_forms/new'
  get 'contact_forms/create'
  get 'pages/home'
  root to: 'pages#home'
  get '/services', to: 'pages#services'
  get '/about', to: 'pages#about'
  get '/termsandprivacy', to: 'pages#termsandprivacy'
  get '/gallery', to: 'pages#gallery'
  get '/contacts', to: 'pages#contacts'
  get '/virtualoffice', to: 'pages#virtualoffice'
  get '/coworking', to: 'pages#coworking'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
