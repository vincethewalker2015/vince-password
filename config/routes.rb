Rails.application.routes.draw do
  devise_for :users
  root 'passwords#index'
  
  resources :passwords
end
