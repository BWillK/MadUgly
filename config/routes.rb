Rails.application.routes.draw do

  get 'cart/index', to: 'cart#index', as: 'cart'

  get '/products/category/:id', to: 'products#category', as: 'category'

  get 'search/index'

  get 'user/index'

  resources :products, only: [:index, :show, :category] do
    collection do
      post :clear_cart
    end
    member do
      post :add_to_cart, as: 'add_to_cart' # POST /products/:id/add_to_cart
      post :mark_in_cart # POST /products/:id/mark_in_cart
    end
  end

  root to: 'products#index'

  get 'search', to: 'search#index', as: 'search'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
