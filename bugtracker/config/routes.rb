Bugtracker::Application.routes.draw do
  devise_for :users
  resources :tickets
  resources  :projects do
    resources :tickets
  end
  resources :users

  root :to => "home#index"
  match '/token' => 'home#token', :as => :token
   
  match '/admin', :to =>'admin#index'
end
