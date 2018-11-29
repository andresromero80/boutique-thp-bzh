class Item < ApplicationRecord
	def to_param
        slug
    end
    
    has_one_attached :picture
    has_many :orders_items
    has_and_belongs_to_many :orders, through: :orders_items
    
    has_many :carts_items
    has_and_belongs_to_many :carts, through: :carts_items
    accepts_nested_attributes_for :carts_items
    accepts_nested_attributes_for :orders_items
end
