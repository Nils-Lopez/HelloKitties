class User < ApplicationRecord
  # a user has many carts:
  has_one :cart, class_name: "cart", foreign_key: "cart_id"
  has_many :items, through: :carts
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
