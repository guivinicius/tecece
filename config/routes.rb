Tecece::Application.routes.draw do
  resources :projects

  devise_for :users

  resources :colleges

  root :to => 'colleges#index'

end
