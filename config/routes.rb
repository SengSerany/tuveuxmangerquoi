Rails.application.routes.draw do

  devise_for :users
  resources :homepage, only: [:index]
  resources :types
  resources :lists

  root to: "homepage#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
