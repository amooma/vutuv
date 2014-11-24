json.array!(@brands) do |brand|
  json.extract! brand, :id, :name, :url, :manufacturer_id, :wikipedia_url
  json.url brand_url(brand, format: :json)
end
