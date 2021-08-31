class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :check_browser

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :card_number])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :card_number])
  end

  def check_browser
    raise
  end


end
