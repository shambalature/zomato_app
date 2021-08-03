json.extract! order, :id, :user, :deliver_by, :restaurant, :total_price, :created_at, :updated_at
json.url order_url(order, format: :json)
