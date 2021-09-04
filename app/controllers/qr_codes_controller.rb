class QrCodesController < ApplicationController
  before_action :set_qr_data, only: :create

  def index
  end

  def new
  end

  def show
  end

  def create
    @qr_code = QrCode.find_by(data: @qr_data)
    @product = @qr_code.product

    @order_item = OrderItem.new
    @order_item.product = @product
    @user_orders = Order.where(user: current_user)
    @order_item.order = @user_orders.last
    # @order_item.save!
    redirect_to product_path(@product)
  end


  private

  def set_qr_data
    qr_code_params = JSON.parse(params[:qr_code_json_data]).with_indifferent_access

    @qr_data = qr_code_params[:qr_data]
  end
end
