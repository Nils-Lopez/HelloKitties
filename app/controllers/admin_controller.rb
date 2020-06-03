class AdminController < ApplicationController
  def edit
  	@users = User.where(admin: false)
  	@admins = User.where(admin: true)
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
end
