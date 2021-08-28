class ProductsController < ApplicationController

  def show
    @product = Product.find(params[:id])
    @order_item = OrderItem.new
    @user = current_user
    @user_orders = Order.where(user: current_user)
    @order = @user_orders.last
    @all_order_items = OrderItem.where(order: @order).order('created_at DESC')
  end

end
