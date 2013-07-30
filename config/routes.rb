Luggish::Application.routes.draw do
<<<<<<< HEAD

 root :to => 'pages#home'
=======
  root :to => 'pages#home'
>>>>>>> d74f86c49945495ec585490fc55dc1575a1d4f5a
  get 'about' => 'pages#about'
  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"
  get "signup" => "users#new", :as => "signup"

 resources :users
 resources :sessions
 resources :password_resets
 resources :lists

end
