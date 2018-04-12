Rails.application.routes.draw do

  get 'checkout/index'

  get 'checkout/show'

  get 'order_items/create'

  get 'order_items/update'

  get 'order_items/destroy'

  get 'carts/show', to: 'carts#show', as: 'cart'

  get '/products/category/:id', to: 'products#category', as: 'category'

  get 'search/index'

  get 'user/index'

  resources :products, only: [:index, :show, :category]
  resource :carts, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]
  resources :charges
  resources :checkout, only: [:index] do
  end

  root to: 'products#index'

  get 'search', to: 'search#index', as: 'search'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
