class CheckoutController < ApplicationController
  def index
    current_order.subtotal = current_order.order_items.sum(:total_price)
    @amount = current_order.subtotal * 100

  end

  def checkout
    current_order.subtotal = current_order.order_items.total_price.sum
  end
end
