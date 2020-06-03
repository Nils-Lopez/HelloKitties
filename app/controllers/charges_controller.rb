class ChargesController < ApplicationController
  def new
  end
  
  def create
    # Amount in cents
    @cart = current_user.cart
    @amount = (@cart.total * 100).to_i
  
    customer = Stripe::Customer.create({
      email: params[:stripeEmail],
      source: params[:stripeToken],
    })
  
    charge = Stripe::Charge.create({
      customer: customer.id,
      amount: @amount,
      description: 'Rails Stripe customer',
      currency: 'eur',
    })
    PaymentMailer.payment_confirmation(@cart.items, current_user).deliver_now
    User.where(admin: true).each do |admin|
      PaymentMailer.admin_mailer(@cart.items, admin, current_user).deliver_now
    end
    Order.create(stripe_customer_id: customer.id, user_id: current_user.id)
    
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
end
