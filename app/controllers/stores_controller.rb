class StoresController < ApplicationController

  def index
    @order = Order.new
    # conditional - if coordinates exist, save it in users session (session["longtitude"] = ) else just all stores
    # in post method render json: {response}
    if !session[:langtitude].nil? && !session[:longtitude].nil?
      @stores_near_you = Store.near([session[:langtitude], session[:longtitude]], 5)
    else
      @stores_near_you = Store.all
    end

    if params[:query].present?
      @stores = @stores_near_you.where("name ILIKE ?", "%#{params[:query]}%")
      if @stores.length == 0
        render "shared/missingshops"
      elsif @stores.length == 1
        redirect_to store_path(@stores.first)
      else

      end
    else
      @stores = @stores_near_you
    end
  end

    def show

      @store = Store.find(params[:id])
      @order = Order.new

    end
  end
