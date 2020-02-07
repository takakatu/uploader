Rails.application.routes.draw do
  devise_for :users
  root to: "items#index"
  resources :items, only: [:index, :new, :create, :destroy] do
    collection do
      get 'get_category_children', defaults: {format: 'json'}
      get 'get_category_grandchildren', defaults: {format: 'json'}
    end
  end
  resources :images, only: [:index, :new, :create, :destroy, :edit]
  
  resources :users, only: [:index, :new, :create, :destroy]
end
