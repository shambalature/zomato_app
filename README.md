# README

This README would normally document whatever steps are necessary to get the
application up and running.

User
  has_many :orders
  has_many :delivery_orders, class_name: "Order", foreign_key: "delivery_partner_id" # For delivery boys
  has_many :restaurant_users
  has_many :restaurants, through: :restaurant_users
  has_many :reviews, through: :orders # for delivery boys

Order
  belongs_to :user
  belongs_to :delivery_partner, class_name: "User"
  belongs_to :restaurant
  has_many :item_orders
  has_many :items, through: :item_orders
  has_one :review # Delivery review
  
ItemOrder
  belongs_to :order
  belongs_to :item
  has_one :review # Food review

Item
  belongs_to :cuisine
  belongs_to :restaurant
  has_many :reviews, through: :item_orders

Restaurant
  has_many :restaurant_users
  has_many :users, through: :restaurant_users
  has_many :orders
  has_many :items
  has_many :users, through: :orders
  has_many :reviews
  
Cuisine
  has_many :items
  has_many :restaurants, through: :items
  
RestaurantUser
  belongs_to :user
  belongs_to :restaurant
  enum role: { admin: 0, manager: 1, staff: 2 }, _suffix: true

Review
  belongs_to :reviewable, polymorphic: true
  belongs_to :user