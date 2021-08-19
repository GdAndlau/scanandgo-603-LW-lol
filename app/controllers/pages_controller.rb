class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    if current_user
    redirect_to stores_path
    else
    end
  end

  def index
  end

end
