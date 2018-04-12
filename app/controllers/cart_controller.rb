class CartController < ApplicationController
  def index
    @inCart = session[:cart]
  end
end
