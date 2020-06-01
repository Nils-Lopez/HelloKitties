class PaymentMailer < ApplicationMailer
	default from: 'dev.hellokitties@gmail.com'
 
  def payment_confirmation
  	#@user = current_user

  	#@url = "monsite.herokuapp.com"

  	mail(to: "nils.lpzz@gmail.com", subject: "Confirmation de votre commande")
  end
end
