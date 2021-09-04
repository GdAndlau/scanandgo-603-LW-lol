class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :desktop_landing_page ]

  def home
    if current_user
     redirect_to stores_path
    else
    end
  end

  def index
  end

  def qrcode
  end

  def desktop_landing_page
  end
end
