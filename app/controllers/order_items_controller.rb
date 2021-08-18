class OrderItemsController < ApplicationController
  def create
    @order_item = OrderItem.new
    @product_id = Product.find(params[:product_id])
    @user_orders = Order.where(user: current_user)
    @order = @user_orders.last
    @order_item.product = @product_id
    @order_item.order = @order

    if @order_item.save!
      redirect_to product_path(@product_id)
    else
      render "products/show"
    end
  end
end
