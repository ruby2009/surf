Rails.application.routes.draw do
  resources :authors
  resources :cheeses

  root 'home#index'

  get "/login" => 'sessions#new', as: :login_path
  post "/login" => 'sessions#create'
  delete "/logout" => 'sessions#destroy', as: :logout

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
