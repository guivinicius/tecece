Tecece::Application.routes.draw do
  
  get "dashboard/index"

  get "home/index"

  devise_for :users
  match '/dashboard' => "dashboard#index", :as => :user_root

  resources :projects
  resources :colleges

  root :to => 'home#index'

end
