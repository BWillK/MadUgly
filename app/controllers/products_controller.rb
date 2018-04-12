class ProductsController < ApplicationController
  before_action :initialize_session

  def index
    @products = Product.order(:name).page params[:page]
    @order_item = current_order.order_items.new
  end

  def clear_cart
    session[:cart] = []
    redirect_back(fallback_location: root_path)
  end

  def show
    @product = Product.find(params[:id])
    @order_item = current_order.order_items.new
  end

  def category
    @category = Product.left_joins(:product_categories).all.where('product_categories.category_id = ?', params[:id]).page params[:page]
  end

  def add_to_cart
    id = params[:id].to_i
    qty = params[:qty].to_i
    session[:cart] << [{:item => id, :quantity => qty}]
    redirect_to cart_path
  end

  def mark_in_cart
    id = params[:id].to_i
    session[:cart].delete(id)
    redirect_to cart_path
  end

  private
  def initialize_session
    session[:cart] ||= []
  end


end
