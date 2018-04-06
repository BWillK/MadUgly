class SearchController < ApplicationController
  def index
    @search_terms = params[:q]
    @search_category = params[:p].to_i

    # @catResults = Category.where('id = ?', @search_category)
    # @results = @catResults.where()
    @results = Product.left_joins(:product_categories).where('name LIKE ?', "%" + @search_terms + "%").where('product_categories.category_id = ?', @search_category)
  end
end
