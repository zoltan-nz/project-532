json.array!(@kids) do |kid|
  json.extract! kid, 
  json.url kid_url(kid, format: :json)
end
