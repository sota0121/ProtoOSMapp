require "application_system_test_case"

class MyLocationsTest < ApplicationSystemTestCase
  setup do
    @my_location = my_locations(:one)
  end

  test "visiting the index" do
    visit my_locations_url
    assert_selector "h1", text: "My Locations"
  end

  test "creating a My location" do
    visit my_locations_url
    click_on "New My Location"

    fill_in "Lat", with: @my_location.lat
    fill_in "Lon", with: @my_location.lon
    click_on "Create My location"

    assert_text "My location was successfully created"
    click_on "Back"
  end

  test "updating a My location" do
    visit my_locations_url
    click_on "Edit", match: :first

    fill_in "Lat", with: @my_location.lat
    fill_in "Lon", with: @my_location.lon
    click_on "Update My location"

    assert_text "My location was successfully updated"
    click_on "Back"
  end

  test "destroying a My location" do
    visit my_locations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "My location was successfully destroyed"
  end
end
