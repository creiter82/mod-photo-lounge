class ContactsController < ApplicationController

  def index
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    @contact.request = request
    if @contact.deliver
      flash.now[:notice] = 'Thank you for your message. We will contact you soon!'
      redirect_to contacts_path
    else
      flash.now[:error] = 'Cannot send message.'
      render :index
    end
  end

  private

    def contact_params
      params.require(:contact).permit(:name, :email, :phone, :date, :event_type, :message, :nickname)
    end

end