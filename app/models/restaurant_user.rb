class RestaurantUser < ApplicationRecord
  # associations
  belongs_to :user
  belongs_to :restaurant
  enum role: { admin: 0, manager: 1, staff: 2 }, _suffix: true
end
