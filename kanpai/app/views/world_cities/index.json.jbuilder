json.array!(@world_cities) do |world_city|
  json.extract! world_city, :id, :country, :city, :accentcity, :region, :population, :latitude, :longitude
  json.url world_city_url(world_city, format: :json)
end
