class ProductsController < ApplicationController
  def index
    @products = Product.order(:name).page params[:page]
  end

  def show
    @product = Product.find(params[:id])
  end

  def category
    @category = Product.left_joins(:product_categories).all.where('product_categories.category_id = ?', params[:id]).page params[:page]
  end
end
