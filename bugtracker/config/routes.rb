Bugtracker::Application.routes.draw do
  devise_for :users
  resources :tickets
  resources  :projects do
    resources :tickets
  end
  resources :users

  root :to => "home#index"
  match '/token' => 'home#token', :as => :token
  match '/projects/id/new_ticket/' => 'projects#new_ticket', :as => :id  
   
  match '/admin', :to =>'admin#index'
end
