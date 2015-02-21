class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      #flash.now[:notice] = 'Thank you for your message. We will contact you soon!'
      respond_to do |format|
          format.js {@name = @contact.name}
      end
    else
      respond_to do |format|
          format.js {render :template => 'failsend'}
      end
    end
  end

  

end