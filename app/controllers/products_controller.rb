class ProductsController < ApplicationController
  before_action :initialize_session

  def index
    @products = Product.order(:name).page params[:page]
  end

  def clear_cart
    session[:cart] = nil
    redirect_back(fallback_location: root_path)
  end

  def show
    @product = Product.find(params[:id])
  end

  def category
    @category = Product.left_joins(:product_categories).all.where('product_categories.category_id = ?', params[:id]).page params[:page]
  end

  def add_to_cart
    id = params[:id].to_i
    session[:cart] << id
    redirect_back(fallback_location: root_path)
  end

  private
  def initialize_session
    session[:cart] ||= []
  end


end
