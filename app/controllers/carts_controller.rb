class CartsController < ApplicationController
  require 'logger'
  before_action :authenticate_user!

  def index
  end
  
  def show
    @cart = Cart.find_by(user_id: current_user.id)
  end

  def new
    @cart = Cart.new
  end

  def create
    @cart = Cart.create(user_id: current_user.id)
    redirect_to cart_path(@cart.id)
  end

  def edit
    @cart = Cart.find_by(user_id: current_user.id)
  end

  def update
    @cart = Cart.find_by(user_id: current_user.id)
    @item = Item.find(params[:id])
    @cart.items.push(@item)
    redirect_to request.referrer
  end

  def delete
    @cart = Cart.find_by(user_id: current_user.id)
    @item = Item.find(params[:id])
    @cart.items.delete(Item.find(params[:id]))
    redirect_to carts_path
  end

  def destroy
    @cart = Cart.find_by(user_id: current_user.id)
    @cart.items.clear
    redirect_to carts_path
  end
end