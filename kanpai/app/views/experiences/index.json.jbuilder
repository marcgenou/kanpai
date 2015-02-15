json.array!(@experiences) do |experience|
  json.extract! experience, :id, :title, :category, :description, :image_url, :price, :season, :date, :duration, :tags
  json.url experience_url(experience, format: :json)
end
