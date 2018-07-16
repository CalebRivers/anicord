Rails.application.routes.draw do
  get 'session/login'
  # resources :users
  resources :users, :only => [:new, :create, :index]
  get 'users/home'
  get 'users/login'
  get 'users/show'
  get 'users/edit'
  get 'users/add'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'users#home'
  get '/login' => 'session#new' # login form
  post '/login' => 'session#create' # perform a login
  delete 'session/login' => 'session#destroy' # perform a log out
end
