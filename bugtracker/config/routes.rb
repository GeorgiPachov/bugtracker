Bugtracker::Application.routes.draw do
  get "search/do_search"

  resources :comments


  resources :ticket_statuses


  devise_for :users
  resources :tickets do
    resources :comments
  end
  resources :ticket_statuses
  resources  :projects do
    resources :tickets
  end
  resources :users

  root :to => "home#index"
  match '/token' => 'home#token', :as => :token
   
  match '/admin', :to =>'admin#index'
  match '/search', :to =>'search#index'
end
