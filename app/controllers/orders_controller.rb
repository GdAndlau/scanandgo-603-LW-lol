class OrdersController < ApplicationController
  def create
    @order = Order.new

    @user = current_user
    @store = Store.find(params[:store_id])

    @order.store_id = @store.id
    @order.user_id = @user.id

    if @order.save!
      flash.alert = "You are now logged in to #{@store.name}"
      redirect_to new_qr_code_path
    else
      flash.alert = "You couldn't login this store"
    end
  end

  def show
    @orders = Order.where(user: current_user)
    @last_order = @orders.last
    @last_order.completed = 'true'
    @last_order.save
    @total_price = 0
    @last_order.order_items.each do |item|
    @total_price = @total_price + item.product.price
    @order = current_user.orders.find(params[:id]) # Stripe related

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



