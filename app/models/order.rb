class Order < ApplicationRecord
belongs_to :user
  has_many :orders_items
  has_and_belongs_to_many :items, through: :orders_items
end
