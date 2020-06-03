class PaymentMailer < ApplicationMailer
	default from: 'dev.hellokitties@gmail.com'
 
  def payment_confirmation(item, user)
  	@user = user

  	#@url = "monsite.herokuapp.com"

  	@item = item

  	mail(to: @user.email, subject: "Confirmation de votre commande")
  end

  def admin_mailer(items, admin, user)
  	@admin = admin

  	@items = items

  	@acheteur = user

  	mail(to: @admin.email, subject: "Nouvelle commande sur HelloKitties !")
  end
end
