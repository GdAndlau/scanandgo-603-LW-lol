class PaymentsController < ApplicationController
  def new
    @user = current_user

    @order = Order.where(user: current_user).last
    link_all_orders_to_payment(@order)
    @all_order_items = OrderItem.where(order: @order).order('created_at DESC')
    @total_price = 0
    @all_order_items.each do |item|
      @total_price = @total_price + item.product.price
    end

  end

  private

  def link_all_orders_to_payment(order)
    sum = 0
    session_title = []
    order.order_items.each do |order_item|
      sum += order_item.product.price_cents
      session_title << order_item.product.title
    end

    order.update(completed: "pending", price_cents: sum)
    session_title = session_title.join(", ")
    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        name: session_title,
        # images: [@order_item.product.image_url],
        amount: order.price_cents,
        currency: 'eur',
        quantity: order.order_items.count #Needs to be fixed
      }],
      success_url: qrcode_url(order),
      cancel_url: new_qr_code_url(order)
    )
    @order.update(checkout_session_id: session.id)
  end
end
