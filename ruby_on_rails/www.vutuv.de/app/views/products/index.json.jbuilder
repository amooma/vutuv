json.array!(@products) do |product|
  json.extract! product, :id, :name, :description, :category_id, :brand_id, :url
  json.url product_url(product, format: :json)
end
