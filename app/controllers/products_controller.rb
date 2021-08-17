class ProductsController < ApplicationController
  def show
    @product = Product.find(params[:id])
    @order_item = OrderItem.new
  end
end
