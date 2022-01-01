Rails.application.routes.draw do

  root to: 'homes#top'

  resources :items, only: [:new, :create, :index, :show, :edit, :update, :destroy]

  resources :addresses, only: [:create, :index, :show, :edit, :update, :destroy]

  resources :categories, only: [:create, :index, :show, :edit, :update, :destroy]

  get "search" => 'categories#search'
  get "search_category" => "categories#search_category"
  get "search_address" => "categories#search_address"

  resources :users
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
