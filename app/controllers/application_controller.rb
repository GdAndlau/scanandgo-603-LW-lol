class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :check_browser, unless: :is_desktop_path_or_developement?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :card_number])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :card_number])
  end

  def is_desktop_path_or_developement?
    request.fullpath == "/desktop" || Rails.env.development?
  end

  def check_browser
    browser = Browser.new(request.user_agent, accept_language: "en-us")
    unless browser.device.mobile?
    redirect_to desktop_path
    end
  end
end
