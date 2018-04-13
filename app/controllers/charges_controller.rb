class ChargesController < ApplicationController
  def new
  end

  def create
    @order_items = current_order.order_items
    # Amount in cents
    @amount = (current_order.subtotal * 100)

    customer = Stripe::Customer.create(
        email: params[:stripeEmail],
        source: params[:stripeToken],
        billing_name: params[:stripeBillingName],
        billing_country: params[:stripeBillingAddressCountry],
        billing_postal_code: params[:stripeBillingAddressZip],
        billing_province: params[:stripeBillingAddressState],
        billing_street: params[:stripeBillingAddressLine1],
        billing_city: params[:stripeBillingAddressCity],
        shipping_name: params[:stripeShippingName],
        shipping_country: params[:stripeShippingAddressCountry],
        shipping_postal_code: params[:stripeShippingAddressZip],
        shipping_province: params[:stripeShippingAddressState],
        shipping_street: params[:stripeShippingAddressLine1],
        shipping_city: params[:stripeShippingAddressCity]
    )

    charge = Stripe::Charge.create(
        :customer    => customer.id,
        :amount      => @amount,
        :description => 'Charge for fashion at MADUgly',
        :currency    => 'cad'
    )


    if charge.paid && charge.amount == @amount

    end

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
end
