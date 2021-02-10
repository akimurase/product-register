json.extract! product, :id, :bame, :price, :vendor, :created_at, :updated_at
json.url product_url(product, format: :json)
