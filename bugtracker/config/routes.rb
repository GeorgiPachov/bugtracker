Bugtracker::Application.routes.draw do
  devise_for :users

  resources :projects

  resources :users


  root :to => "home#index"
  match '/token' => 'home#token', :as => :token
   
  match '/admin', :to =>'admin#index'
end
