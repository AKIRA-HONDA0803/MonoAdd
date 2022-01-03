Rails.application.routes.draw do

  root to: 'homes#top'

  resources :items, only: [:new, :create, :index, :edit, :update, :destroy]

  resources :addresses, only: [:create, :index, :show, :edit, :update, :destroy]

  resources :categories, only: [:create, :index, :edit, :update, :destroy]

  resources :users, only: [:create]
  get '/signup' => 'users#new'

  get "search"          => 'categories#search'
  get "search_category" => "categories#search_category"
  get "search_address"  => "categories#search_address"

  get '/login'     => 'sessions#new'
  post '/login'    => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
end
