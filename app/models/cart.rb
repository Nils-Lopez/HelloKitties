class Cart < ApplicationRecord
	## Relationships:
	belongs_to :user
	has_many :cart_items
  	has_many :items, through: :cart_items

	def total
		price_total = 0
		self.items.each do |item|
			price_total = price_total + item.price * item.cart_items.find_by(cart_id: self.id).quantity
		end
		return price_total
	end
	## validations:
	#validates_uniqueness_of :item, scope: :user
end

