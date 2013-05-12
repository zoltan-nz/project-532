json.array!(@meals) do |meal|
  json.extract! meal, 
  json.url meal_url(meal, format: :json)
end
