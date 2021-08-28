class GeolocationController < ApplicationController
  skip_before_action :verify_authenticity_token

  def location
    puts "starting........."
    results = request.body.read
    parsed = JSON.parse(results)
    @langtitude = parsed["langtitude"]
    @longtitude = parsed["longtitude"]
    session["longtitude"] = @longtitude
    session["langtitude"] = @langtitude

    render json: {
      status: 200
    }
  end
end
