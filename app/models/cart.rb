class Cart < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :items

  def compute_total
    price = 0.0
    self.items.each do |item|
      price += item.price
    end

    return price
  end
end