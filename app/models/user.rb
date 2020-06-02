class User < ApplicationRecord
  # a user has many carts:
<<<<<<< HEAD
  has_one :cart
=======
  has_one :cart, class_name: "cart", foreign_key: "cart_id"
  has_many :items, through: :carts

  has_many :orders
  has_many :items, through: :orders
>>>>>>> 45f4d18af44833ec29a43ac824d141a2a8e311ee
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
