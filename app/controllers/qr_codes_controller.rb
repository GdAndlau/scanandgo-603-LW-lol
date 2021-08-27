class QrCodesController < ApplicationController
  before_action :set_qr_data, only: :create

  def index
    @qr_codes = QrCode.order(created_at: :desc).first(20)
  end

  def new
  end

  def create
    qr_code = QrCode.create(content: @qr_data)

    redirect_to qr_code_path(qr_code)
  end

  private

  def set_qr_data
    qr_code_params = JSON.parse(params[:qr_code_json_data]).with_indifferent_access

    @qr_data = qr_code_params[:qr_data]
  end
end
