class ItemsController < ApplicationController
  before_action :is_admin?, only: [:edit, :create, :update]


  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    item_params = params.require(:item).permit(:description, :price, :title)
    @item.update(item_params)
    redirect_to item_path(@item.id)
  end

	def create 
		@new_item = Item.create(title: params[:title], description: params[:desc], price: params[:price])
		@new_item.picture.attach(params[:file])
		redirect_to root_path
	end

  def index
    @items = Item.all
    if user_signed_in?
    	if current_user.admin
    		@is_admin = true
    	else
    		@is_admin = false
    	end
    else
    	@is_admin = false
    end
  end

  def show
    @items = Item.find(params['id'])
  end

  private 

  def is_admin?
    if user_signed_in?
      unless current_user.admin
        flash[:danger] = "Vous n'avez pas accès à cette partie du site !"
        redirect_to root_path
      end
    else
      flash[:danger] = "Vous devez être connecté !"
      redirect_to root_path
    end
  end
end