class ChargesController < ApplicationController
  def new
    @order_items = current_order.order_items
  end

  def create
    @order_items = current_order.order_items
    # Amount in cents
    @amount = (@order_items.total_price * 100)

    customer = Stripe::Customer.create(
        :email => params[:stripeEmail],
        :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
        :customer    => customer.id,
        :amount      => @amount,
        :description => 'Charge for fashion at MADUgly',
        :currency    => 'usd'
    )

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
end
