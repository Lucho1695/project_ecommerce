json.extract! client, :id, :user_id, :address, :pay_method_id, :integer, :created_at, :updated_at
json.url client_url(client, format: :json)
