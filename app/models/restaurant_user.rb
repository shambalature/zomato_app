class RestaurantUser < ApplicationRecord
  # associations
  belongs_to :user
  belongs_to :restaurant
end
