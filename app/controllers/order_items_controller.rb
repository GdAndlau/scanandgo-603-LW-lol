class OrderItemsController < ApplicationController
  def create
    @order_item = OrderItem.new
    @product_id = Product.find(params[:product_id])
    @user_orders = Order.where(user: current_user)
    @order = @user_orders.last
    @order_item.product = @product_id
    @order_item.order = @order
    @order_item.save!
    product = Product.find(params[:product_id])
      order = @user_orders.last
      order  = Order.update(completed: "pending", price_cents: @order_item.product.price_cents, state: nil, product_sku: nil, checkout_session_id: nil)
      session = Stripe::Checkout::Session.create(
        payment_method_types: ['card'],
        line_items: [{
          name: @order_item.product.title,
          # images: [@order_item.product.image_url],
          amount: product.price_cents,
          currency: 'eur',
          quantity: 1 #Needs to be fixed
        }],
        success_url: qrcode_url(order),
        cancel_url: new_qr_code_url(order)
      )

      @order.update(checkout_session_id: session.id)

    if @order_item.save!
      redirect_to new_qr_code_path
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

  def destroy
    @item = OrderItem.find(params[:id])
    @item.destroy
    redirect_back(fallback_location: root_path)
  end
end
