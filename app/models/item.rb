class Item < ApplicationRecord
  # associations
  belongs_to :restaurant
  has_one :image, as: :imageable
end
