Luggish::Application.routes.draw do
<<<<<<< HEAD
  
  get "password_resets/create"

  get "password_resets/edit"

  get "password_resets/update"
  get "password_resets/show"


  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"
  get "signup" => "users#new", :as => "signup"

 resources :users
 resources :sessions
 resources :password_resets
 root :to => 'pages#home'
 get 'about' => 'pages#about'



 

  # The priority is based upon order of creation:
  # first created -> highest priority.
=======
  resources :lists
>>>>>>> 4175b5387608c6651707cd193cf4f04371f3572a


end
