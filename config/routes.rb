Rails.application.routes.draw do

  get '/products/category/:id', to: 'products#category', as: 'category'

  get 'search/index'

  get 'user/index'

  resources :products, only: [:index, :show, :category]

  root to: 'products#index'

  get 'search', to: 'search#index', as: 'search'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
