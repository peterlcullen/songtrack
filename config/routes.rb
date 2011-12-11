Songtrack::Application.routes.draw do
  resources :users do
    resources :songs
  end
  
  resources :sessions
  
  resources :songs
  
  root :to => 'songs#index'
end
