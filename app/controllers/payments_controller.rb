class PaymentsController < ApplicationController
  def new
    @user = current_user
    @user_orders = Order.where(user: current_user)
    @order = @user_orders.last
    @all_order_items = OrderItem.where(order: @order).order('created_at DESC')
    @total_price = 0
    @all_order_items.each do |item|
    @total_price = @total_price + item.product.price


    end

  end
end
