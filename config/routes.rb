Tecece::Application.routes.draw do
  
  devise_for :users
  
  resources :projects
  resources :colleges

  root :to => 'home#index'

end
