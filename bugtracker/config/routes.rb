Bugtracker::Application.routes.draw do
  devise_for :users

  resources :projects

  resources :users

  get "home/index"

  root :to => "home#index"
  match '/token' => 'home#token', :as => :token

end
