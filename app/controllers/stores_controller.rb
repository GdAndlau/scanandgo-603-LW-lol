class StoresController < ApplicationController

  def index
    @order = Order.new
    # conditional - if coordinates exist, save it in users session (session["longtitude"] = ) else just all stores
    # in post method render json: {response}
    if !session[:langtitude].nil? && !session[:longtitude].nil?
      @store_init = Store.all
      @store_init.each do |store|
        store_dist = (store.distance_to(
          [session[:langtitude], session[:longtitude]]
          ))
        store.Distance = !store_dist.nil? ?store_dist.round(3) : 0
        store.save
      end
      @stores = Store.all.order(distance: :asc)
      @stores_near_you = @stores.near([session[:langtitude], session[:longtitude]], 30)
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
