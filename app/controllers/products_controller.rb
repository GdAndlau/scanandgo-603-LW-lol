class ProductsController < ApplicationController

  def show
    #@qr_code = QrCode.find(params[:id])
    #@product = Product.find(params[:qr_code_id])
    # we could then remove the other product line

    @product = Product.find(params[:id])
    @order_item = OrderItem.new
    @user = current_user
    @user_orders = Order.where(user: current_user)
    @order = @user_orders.last
    @all_order_items = OrderItem.where(order: @order).order('created_at DESC')


  end

end
