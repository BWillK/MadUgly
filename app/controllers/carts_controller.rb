class CartsController < ApplicationController
  def show
    @order_items = current_order.order_items
    @amount = current_order.order_items.all.sum(:total_price)
    # @total = current_order.order_items.total_price
  end

  def checkout
    current_order.order_status="Paying For Order!"
    current_order.subtotal= current_order.order_items.total_price.sum
  end
end
