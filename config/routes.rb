Luggish::Application.routes.draw do
  
  root :to => 'pages#home'

  get 'about' => 'pages#about'
  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"
  get "signup" => "users#new", :as => "signup"

  resources :sessions
  resources :password_resets
  resources :lists 
  resources :items  
  resources :users 
  
end
