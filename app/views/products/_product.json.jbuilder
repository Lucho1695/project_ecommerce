json.extract! product, :id, :user_id, :client_id, :integer, :description, :photo, :created_at, :updated_at
json.url product_url(product, format: :json)
