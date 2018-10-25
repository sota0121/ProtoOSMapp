require 'test_helper'

class MyLocationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @my_location = my_locations(:one)
  end

  test "should get index" do
    get my_locations_url
    assert_response :success
  end

  test "should get new" do
    get new_my_location_url
    assert_response :success
  end

  test "should create my_location" do
    assert_difference('MyLocation.count') do
      post my_locations_url, params: { my_location: { lat: @my_location.lat, lon: @my_location.lon } }
    end

    assert_redirected_to my_location_url(MyLocation.last)
  end

  test "should show my_location" do
    get my_location_url(@my_location)
    assert_response :success
  end

  test "should get edit" do
    get edit_my_location_url(@my_location)
    assert_response :success
  end

  test "should update my_location" do
    patch my_location_url(@my_location), params: { my_location: { lat: @my_location.lat, lon: @my_location.lon } }
    assert_redirected_to my_location_url(@my_location)
  end

  test "should destroy my_location" do
    assert_difference('MyLocation.count', -1) do
      delete my_location_url(@my_location)
    end

    assert_redirected_to my_locations_url
  end
end
