Bugtracker::Application.routes.draw do
  resources :ticket_statuses


  devise_for :users
  resources :tickets
  resources :ticket_statuses
  resources  :projects do
    resources :tickets
  end
  resources :users

  root :to => "home#index"
  match '/token' => 'home#token', :as => :token
   
  match '/admin', :to =>'admin#index'
end
