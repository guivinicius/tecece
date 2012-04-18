Tecece::Application.routes.draw do
  resources :colleges

  root :to => 'colleges#index'

end
