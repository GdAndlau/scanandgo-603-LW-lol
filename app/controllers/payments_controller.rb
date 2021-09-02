class PaymentsController < ApplicationController
  def new
    #@order = current_user.orders.where(state: 'pending').find(params[:order_id])
    @order = current_user.orders.last
    @last_order = @order
    @all_order_it
    ems = OrderItem.where(order: @last_order).order('created_at DESC')
    @total_price = 0
    @all_order_items.each do |item|
    @total_price = @total_price + item.product.price
    end

  end
end
