class StoresController < ApplicationController
  def index
    @order = Order.new
    if coordinates_present?
      @stores = Store.near([session[:langtitude], session[:longtitude]], 40)
      @stores = Store.all if @stores.length.zero?
    else
      @stores = Store.all
    end

    if params[:query].present?
      @stores = @stores.where("name ILIKE ?", "%#{params[:query]}%")
      return render "shared/missingshops" if @stores.length.zero?
      return redirect_to store_path(@stores.first) if @stores.length == 1
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

    @autocomplete_stores = @stores.map do |store|
      if store.distance_from_user.present? && store.distance_from_user < 1
        @rounded_distance = "#{(store.distance_from_user * 1000).round(0)} m"
      elsif store.distance_from_user.present? && store.distance_from_user >= 1
        @rounded_distance = "#{store.distance_from_user.round(1)} km"
      end

      if @rounded_distance.present?
      {
        # url2: "#{redirect_to 'see store', store_path(store)}",
        name: "#{store.name} - #{@rounded_distance} away",
        id: store.id,
        path: store_path(store)
      }
      else
        full_address =  "#{store.name} - #{store.address}"
        {
        name: "#{full_address.first(25)} ... ",
        id: store.id,
        path: store_path(store)
      }
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
