Tecece::Application.routes.draw do

  get "dashboard/index"

  devise_for :users

  resources :projects
  resources :colleges

  authenticated :user do
    root :to => "dashboard#index"
  end

  root :to => 'home#index'

end
