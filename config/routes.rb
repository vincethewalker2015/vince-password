Rails.application.routes.draw do
  root 'pages#home'
  
  devise_for :users, :controllers => { :registrations => 'registrations'}
  match 'users/:id' => 'users#destroy', :via => :delete, :as => :admin_destroy_user
  resources :users
  resources :passwords
end
