class SearchController < ApplicationController
  def index
    @search_terms = params[:q]
    @search_category = params[:p]

    @results = Product.all.joins(:product_categories).joins(:categories).where('category_id = ?', @search_category)
  end
end
