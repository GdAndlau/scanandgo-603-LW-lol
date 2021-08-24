class OrderItemsController < ApplicationController
  def create
    @order_item = OrderItem.new
    @product_id = Product.find(params[:product_id])
    @user_orders = Order.where(user: current_user)
    @order = @user_orders.last
    @order_item.product = @product_id
    @order_item.order = @order

    if @order_item.save!
      render "pages/index"
    else
      render "products/show"
    end
  end

  def index
    # @product = Product.find(params[:id])
    # @order_item = OrderItem.new
    # @user = current_user
    # @user_orders = Order.where(user: current_user)
    # @order = @user_orders.last
    # @all_order_items = OrderItem.where(order: @order).order('created_at DESC')
    @order = Order.where(user: current_user)
    @last_order = @order.last
    @all_order_items = OrderItem.where(order: @last_order).order('created_at DESC')
    @total_price = 0
    @all_order_items.each do |item|
      @total_price = @total_price + item.product.price
    end

  end
end
