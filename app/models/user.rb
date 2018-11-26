class User < ApplicationRecord
  has_one :cart
  has_many :orders
  has_many :items, through: :carts
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
