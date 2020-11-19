json.extract! comment, :id, :rate, :client_id, :comments, :created_at, :updated_at
json.url comment_url(comment, format: :json)
