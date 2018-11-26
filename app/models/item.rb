class Item < ApplicationRecord
    has_many :users, through: :carts
    has_and_belongs_to_many :orders
end