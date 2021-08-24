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

end
