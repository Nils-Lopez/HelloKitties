class AdminController < ApplicationController
  before_action :is_admin?, only: [:edit, :create, :destroy]

  def edit
  	@users = User.where(admin: false)
  	@admins = User.where(admin: true)
    @orders = Order.all
  end

  def destroy
  	User.find(params[:id]).update(admin:false)
  	if params[:id].to_i != current_user.id
  		redirect_to edit_admin_path(current_user.id)
  	else
  		flash[:danger] = "Vous n'êtes plus administrateur du site !"
  		redirect_to root_path
  	end
  end

  def create
  	User.find(params[:format]).update(admin: true)
  	redirect_to edit_admin_path(current_user.id)
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
