class Item < ApplicationRecord
  ## Relationships:
  has_and_belongs_to_many :carts

  has_many :orders
  has_many :users, through: :orders
  ## Validations:
  #Titre mandatory and between 2 and 500 CHARACTERS
  validates :title, presence: true, length: { in: 2..500}
  validates :description, presence: true

  #Price must be positive but item can be Free
  validates :price, :numericality => {greater_than_or_equal_to: 0}, presence: true

  #Image validation to input later
<<<<<<< HEAD
  has_one_attached :picture
  
=======
>>>>>>> a2465e8087add042365722bf8c4a1bfd4f3dfcbf
end
