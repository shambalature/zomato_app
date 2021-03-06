class Restaurant < ApplicationRecord
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  # associations
  has_many :restaurant_users
  has_many :users, through: :restaurant_users
  has_many :orders
  has_many :users, through: :orders
  has_many :images, as: :imageable, inverse_of: :imageable
  has_many :items
end
