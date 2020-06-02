class Item < ApplicationRecord
  ## Relationships:
  has_many :carts, class_name: "cart", foreign_key: "cart_id"
  has_many :users, through: :carts

  has_many :orders
  has_many :users, through: :orders
  ## Validations:
  #Titre mandatory and between 2 and 500 CHARACTERS
  validates :title, presence: true, length: { in: 2..500}
  validates :description, presence: true

  #Price must be positive but item can be Free
  validates :price, :numericality => {greater_than_or_equal_to: 0}, presence: true

  #Image validation to input later
end
