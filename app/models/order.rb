class Order < ApplicationRecord
  # Association
  belongs_to :user
  belongs_to :deliver_by, class_name: "User"
  belongs_to :restaurant

  has_many :item_orders
  has_many :items, through: :item_orders
end
