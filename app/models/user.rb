class User < ApplicationRecord
  after_create :create_cart
  # a user has many carts:
  has_one :cart
  
  has_many :orders
  has_many :items, through: :orders
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  private
  def create_cart
    Cart.create(user_id: self.id)
  end
end
