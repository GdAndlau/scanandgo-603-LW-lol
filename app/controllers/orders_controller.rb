class OrdersController < ApplicationController
  def create
    @order = Order.new

    @user = current_user
    @store = Store.find(params[:store_id])

    @order.store_id = @store.id
    @order.user_id = @user.id

    if @order.save!
      render "pages/index"
      flash.alert = "You are now logged in to #{@store.name}"
    else
      flash.alert = "You couldn't login this store"
    end
  end


  def show
    @orders = Order.where(user: current_user)
    @last_order = @orders.last
    @total_price = 0
    @last_order.order_items.each do |item|
      @total_price = @total_price + item.product.price
    end
  end

  def destroy
    @user = current_user
    @all_orders = Order.where(user: @current_user)
    @last_order = @all_orders.last
    @last_order.destroy
    redirect_to root_path

  end
end
