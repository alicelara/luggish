Luggish::Application.routes.draw do
  
  get "items/index"

  get "items/show"

  root :to => 'pages#home'

  get 'about' => 'pages#about'
  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"
  get "signup" => "users#new", :as => "signup"

  resources :sessions
  resources :password_resets
  resources :lists

  resources :users #do
      # namespace :my do
      #   resources :items, :only => [:index, :show]
      # end
  #end
  
  # match '/items/myitem', :controller => 'items', :action => 'myitem'
  resources :items 

  # resources :itemlists
  get "itemslists/index"
 
  

end
