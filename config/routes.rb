Tecece::Application.routes.draw do
  
  get "home/index"

  devise_for :users
  
  resources :projects
  resources :colleges

  root :to => 'home#index'

end
