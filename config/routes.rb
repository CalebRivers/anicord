Rails.application.routes.draw do
  get 'users/home'
  get 'users/login'
  get 'users/show'
  get 'users/edit'
  get 'users/add'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/' => "users#home"
end
