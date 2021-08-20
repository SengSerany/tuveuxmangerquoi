Rails.application.routes.draw do

  devise_for :users
  resources :homepage, only: [:index]
  resources :types
  resources :lists
  resources :dishes, except: [:index, :new]
  resources :link_ingredients_dishes, only: [:create, :update, :destroy]
  resources :link_lists_dishes, only: [:create, :update, :destroy]
  resources :ingredients, except: [:new, :edit]

  root to: "homepage#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
