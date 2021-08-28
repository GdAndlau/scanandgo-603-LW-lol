require 'test_helper'

class GeolocationControllerTest < ActionDispatch::IntegrationTest
  test "should get set_location" do
    get geolocation_set_location_url
    assert_response :success
  end

end
