Tecece::Application.routes.draw do

  devise_for :users

  resources :dashboard
  resources :projects
  resources :colleges

  root :to => 'dashboard#index'

end
