Tecece::Application.routes.draw do
  devise_for :users

  resources :colleges

  root :to => 'colleges#index'

end
