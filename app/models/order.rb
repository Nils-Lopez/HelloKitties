class Order < ApplicationRecord
  belongs_to :user

  has_many :order_items
  has_many :items, through: :order_items

  def total
		price_total = 0
		self.items.each do |item|
			price_total = price_total + item.price * item.order_items.find_by(order_id: self.id).quantity
		end
		return price_total
	end
end
