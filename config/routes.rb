Rails.application.routes.draw do
  root 'passwords#index'
  
  resources :passwords
end
