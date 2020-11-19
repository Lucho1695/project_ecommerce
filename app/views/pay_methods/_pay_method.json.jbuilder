json.extract! pay_method, :id, :method, :date, :card_number, :csv, :card, :bank, :card_type, :created_at, :updated_at
json.url pay_method_url(pay_method, format: :json)
