json.extract! my_location, :id, :lon, :lat, :created_at, :updated_at
json.url my_location_url(my_location, format: :json)
