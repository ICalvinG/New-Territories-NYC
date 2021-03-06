class ContactsController < ApplicationController
  
  def index
    @background_image = "/assets/store.jpg"
    @contacts = Contact.all
  end

  def new
    @contact = Contact.new
  end

  def create
  	@contact = Contact.new(contact_params)
   	@contact.save
   		if @contact.save
   			contact = Contact.last
   			mail = ContactMailer.contact_application(contact)
   			mail.deliver_now
        	@contact.destroy
   			redirect_to(root_path, :notice => 'Form was successfully sent.')
    	end
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy
    redirect_to contacts_path, notice:  "The contact #{@contact.name} has been deleted."
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end

end
