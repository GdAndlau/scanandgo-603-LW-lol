class StoresController < ApplicationController

  def index
    @stores = Store.all
    # the `geocoded` scope filters only flats with coordinates (latitude & longitude)
    @markers = @stores.geocoded.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude
        }
      end
    end

    def show
      @store = Store.find(params[:id])
    end
  end
