Rails.application.routes.draw do

  root to: 'homes#top'

  resources :items, only: [:new, :create, :index, :show, :edit, :update, :destroy]

  resources :addresses, only: [:new, :create, :index, :show, :edit, :update, :destroy]

  resources :categories, only: [:new, :create, :index, :show, :edit, :update, :destroy]

  get "search" => 'categories#search'
  get "search_category" => "categories#search_category"
  get "search_address" => "categories#search_address"

end
