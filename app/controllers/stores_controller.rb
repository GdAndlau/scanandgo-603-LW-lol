class StoresController < ApplicationController
  def index
    @order = Order.new

    if coordinates_present?
      @stores = Store.near([session[:langtitude], session[:longtitude]], 8)
    else
      @stores = Store.all
    end

    if params[:query].present?
      @stores = @stores.where("name ILIKE ?", "%#{params[:query]}%")
      if @stores.length == 0
        return render "shared/missingshops"
      elsif @stores.length == 1
        return redirect_to store_path(@stores.first)
      end
    end

  if coordinates_present?
    @stores = @stores.to_a.map do |store|
      distance = store.distance_to([session[:langtitude], session[:longtitude]])
      store.distance_from_user = distance.present? ? distance.round(3) : 0
      store
    end

    @stores.sort_by do |store|
      store.distance_from_user
    end
  end
  end

  def show
    @store = Store.find(params[:id])
    @order = Order.new
  end

  private

  def coordinates_present?
    session[:langtitude].present? && session[:longtitude].present?
  end


  end
