Rails.application.routes.draw do
  get 'addresses/index'
  get 'addresses/edit'
  get 'addresses/show'
  resources :items, only: [:new, :create, :index, :show, :edit, :update, :destroy]
  # get 'items/index'
  # get 'items/edit'
  # get 'items/show'
  get 'categories/index'
  get 'categories/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'homes#top'
end
