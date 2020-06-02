class User < ApplicationRecord
  # a user has many carts:
  has_and_belongs_to_many :item, join_table: "carts", foreign_key: "item_id"
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
