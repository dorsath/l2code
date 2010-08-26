class ContactMailer < ActionMailer::Base
  default :from => "from@example.com"

  def contact_form contact
    @contact = contact
    mail(:to => "info@l2code.nl", :from => contact[:email], :subject => "Contactform message from #{contact[:name]}") do |format| 
      format.html
    end
  end
end
