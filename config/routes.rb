Songly2::Application.routes.draw do
  resources :users
  resources :sessions
  resources :songs
  
  root :to => 'songs#index'
end
