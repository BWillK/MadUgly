class SearchController < ApplicationController
  def index
    @search_terms = params[:q]
    @search_category = params[:p]

    @results = Product.joins(:category).where(category: {id: 1})
  end
end
