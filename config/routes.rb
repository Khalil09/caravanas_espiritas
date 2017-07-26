Rails.application.routes.draw do
  root to: 'front_page#index'

  
  resources :packages do
  	resources :years do
  		resources :users
  	end
  end

  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
