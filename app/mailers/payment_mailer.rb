class PaymentMailer < ApplicationMailer
	default from: 'dev.hellokitties@gmail.com'
 
  def payment_confirmation(item)
  	@user = current_user

  	#@url = "monsite.herokuapp.com"

  	@item = item

  	mail(to: @user.email, subject: "Confirmation de votre commande")
  end
end
