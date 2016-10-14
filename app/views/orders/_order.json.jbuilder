json.extract! order, :id, :name, :phone, :address, :food_id, :created_at, :updated_at
json.url order_url(order, format: :json)