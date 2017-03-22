Rails.application.routes.draw do
  resources :years
  resources :users
  resources :packages
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
