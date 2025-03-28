Rails.application.routes.draw do
  get "contact/index"
  get "about/index"
  get "home/index"

  get '/about', to: 'about#index'
  get '/contact', to: 'contact#index'
 
 
  get "up" => "rails/health#show", as: :rails_health_check

  get 'contact/index'
  post 'contact/create'
  
    root 'home#index'
    resources :home
    resources :about
    resources :contact
  
 
end
