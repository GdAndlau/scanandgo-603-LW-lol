class PaymentsController < ApplicationController
  def new
    @user = current_user
    @order = Order.where(user: current_user)
    @order.checkout_session_id = @order[-1]
    @last_order = @order.last
    @all_order_items = OrderItem.where(order: @last_order).order('created_at DESC')
    @total_price = 0
    @all_order_items.each do |item|
    @total_price = @total_price + item.product.price
    end

  end
end
