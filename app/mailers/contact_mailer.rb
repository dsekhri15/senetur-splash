class ContactMailer < ApplicationMailer
  default :to => ['adrian@senetur.com', 'brian@senetur.com', 'senetur@alfajango.com']
  default :from => "noreply@senetur.com"

  def contact_form(message)
    @message = message
    mail :subject => "[Senetur]: #{@message.name} wants to sign up for the beta!"
  end
end
