class CartController < ApplicationController
  def index
    def show
      @order_items = current_order.order_items
    end
  end
end
