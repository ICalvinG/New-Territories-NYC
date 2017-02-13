class ContactMailer < ApplicationMailer

  def contact_application(contact)
    @contact = contact

    mail(:to => "calvinieong1118@gmail.com", :subject => "Contact Us") do |formatt| 
        formatt.text {render :text => "Full Name: #{@contact.full_name}\nEmail: #{@contact.email}\nMessages: #{@contact.message}"}
    end.deliver

  end

end
