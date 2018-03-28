class SearchController < ApplicationController
  def index
    @search_terms = params[:q]
    @search_category = params[:p]

    @results = Category.find_by_name(@search_category).products.find_by name:
  end
end
