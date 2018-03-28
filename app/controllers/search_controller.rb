class SearchController < ApplicationController
  def index
    @search_terms = params[:q]
    @search_category = params[:p]

    productSearch = @search_category.to_ruby.arel_table
    @searchResults = @search_category.to_ruby.where(productSearch[:name].matches("%" + @search_terms + "%"))
  end
end
