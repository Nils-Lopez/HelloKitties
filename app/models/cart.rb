class Cart < ApplicationRecord
	## Relationships:
	belongs_to :user
	has_and_belongs_to_many :items

	def total
		price_total = 0
		self.items.each do |item|
			price_total = price_total + item.price
		end
		return price_total
	end
	## validations:
end

