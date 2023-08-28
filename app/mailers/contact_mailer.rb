class ContactMailer < ApplicationMailer
  default from: 'your@gmail.com' # Votre adresse e-mail

  def contact_email(contact)
    @contact = contact
    mail(to: 'your@example.com', subject: 'Nouveau message de contact')
  end
end
