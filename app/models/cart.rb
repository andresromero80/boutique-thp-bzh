class Cart < ApplicationRecord
  belongs_to :user
  has_many :carts_items
  has_and_belongs_to_many :items, through: :carts_items
  accepts_nested_attributes_for :carts_items

  def compute_total
    price = 0.0
    c = Cart.find(self.id)
    c.carts_items.each do |t|
      price += Item.find(t.item_id).price
    end
    
    return price
  end

  def to_param
    slug
  end
end
