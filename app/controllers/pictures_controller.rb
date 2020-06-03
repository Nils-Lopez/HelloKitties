class PicturesController < ApplicationController
	def create
		@item = Item.find(params[:item_id])
		@item.picture.attach(params[:file])
		redirect_to edit_item_path(@item.id)
	end
end
