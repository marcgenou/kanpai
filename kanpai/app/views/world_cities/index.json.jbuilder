json.array!(@world_cities) do |world_city|
  json.extract! world_city, :id, :geonameid, :name, :asciiname, :alternatenames, :latitude, :longitude, :feature_class, :feature_code, :country_code, :cc2, :admin1_code, :admin2_code, :admin3_code, :admin4_code, :population, :elevation, :dem, :timezone, :modification_date
  json.url world_city_url(world_city, format: :json)
end
