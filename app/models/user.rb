class User < ApplicationRecord
  # a user has many carts:
  has_one :cart
  
  has_many :orders
  has_many :items, through: :orders
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
